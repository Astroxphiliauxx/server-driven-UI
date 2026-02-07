import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:sdui_models/sdui_models.dart';

// ============================================
// SCREEN BUILDERS
// Each function returns a ScreenModel for a specific screen
// ============================================

/// Home Screen - Main landing page
/// Contains: title, image banner, horizontal card list, navigation buttons
ScreenModel buildHomeScreen() {
  return ScreenModel.vertical(
    screenTitle: 'Home',
    components: [
      // Page title
      const ComponentModel.title(title: 'Welcome to SDUI App'),
      
      // Image banner
      const ComponentModel.imageBanner(
        imageUrl: 'https://picsum.photos/seed/sdui/400/200',
        height: 200,
      ),
      
      const ComponentModel.spacer(height: 16),
      
      // Horizontal list of 4 cards
      ComponentModel.horizontalList(
        height: 140,
        items: List.generate(
          4,
          (i) => ComponentModel.card(
            title: 'Card ${i + 1}',
            subtitle: 'This is card number ${i + 1}',
          ),
        ),
      ),
      
      const ComponentModel.spacer(height: 24),
      
      // Navigation button to Profile
      const ComponentModel.button(
        label: 'Go to Profile',
        isPrimary: true,
        action: ActionModel.navigate(destination: 'profile'),
      ),
      
      // Navigation button to Settings
      const ComponentModel.button(
        label: 'Go to Settings',
        action: ActionModel.navigate(destination: 'settings'),
      ),
    ],
  );
}

/// Profile Screen - User profile page
/// Contains: title, info tile with avatar, stats card, snackbar button, back button
ScreenModel buildProfileScreen() {
  return const ScreenModel.vertical(
    screenTitle: 'Profile',
    components: [
      // Page title
      ComponentModel.title(title: 'Your Profile'),
      
      ComponentModel.spacer(height: 16),
      
      // User info tile with avatar
      ComponentModel.infoTile(
        avatarUrl: 'https://i.pravatar.cc/150?u=sdui',
        title: 'John Doe',
        subtitle: 'john.doe@email.com',
      ),
      
      ComponentModel.spacer(height: 16),
      
      // User statistics card
      ComponentModel.card(
        title: 'Your Stats',
        subtitle: '150 posts • 2.5k followers • 890 following',
      ),
      
      ComponentModel.spacer(height: 24),
      
      // Show snackbar button
      ComponentModel.button(
        label: 'Show Message',
        isPrimary: true,
        action: ActionModel.showSnackbar(message: 'Hello from Server-Driven UI!'),
      ),
      
      // Go back button
      ComponentModel.button(
        label: 'Go Back',
        action: ActionModel.goBack(),
      ),
    ],
  );
}

/// Settings Screen - App settings page
/// Contains: title, info tiles for settings sections, dividers, URL button, back button
ScreenModel buildSettingsScreen() {
  return const ScreenModel.vertical(
    screenTitle: 'Settings',
    components: [
      // Page title
      ComponentModel.title(title: 'Settings'),
      
      ComponentModel.spacer(height: 16),
      
      // Notifications setting
      ComponentModel.infoTile(
        leadingIcon: 'notifications',
        title: 'Notifications',
        subtitle: 'Manage your notification preferences',
      ),
      
      ComponentModel.divider(),
      
      // Privacy setting
      ComponentModel.infoTile(
        leadingIcon: 'privacy',
        title: 'Privacy',
        subtitle: 'Control your data and privacy settings',
      ),
      
      ComponentModel.divider(),
      
      // About section
      ComponentModel.infoTile(
        leadingIcon: 'info',
        title: 'About',
        subtitle: 'App version 1.2.0',
      ),
      
      ComponentModel.spacer(height: 24),
      
      // Open URL button
      ComponentModel.button(
        label: 'Visit Flutter Website',
        isPrimary: true,
        action: ActionModel.openUrl(url: 'https://flutter.dev'),
      ),
      
      // Go back button
      ComponentModel.button(
        label: 'Go Back',
        action: ActionModel.goBack(),
      ),
    ],
  );
}

// ============================================
// SERVER SETUP
// ============================================

void main(List<String> args) async {
  // Create router
  final router = Router();

  // Handler function for screen requests
  Response handleScreenRequest(String screenName) {
    // Build the appropriate screen based on name
    final screen = switch (screenName) {
      'home' => buildHomeScreen(),
      'profile' => buildProfileScreen(),
      'settings' => buildSettingsScreen(),
      _ => ScreenModel.error(
          errorMessage: 'Screen "$screenName" not found',
          errorCode: '404',
        ),
    };

    // Return JSON response
    return Response.ok(
      jsonEncode(screen.toJson()),
      headers: {'Content-Type': 'application/json'},
    );
  }

  // GET /screens/<screenName> - For browser testing
  router.get('/screens/<screenName>', (Request request, String screenName) {
    return handleScreenRequest(screenName);
  });

  // POST /screens/<screenName> - For client app
  router.post('/screens/<screenName>', (Request request, String screenName) {
    return handleScreenRequest(screenName);
  });

  // CORS Middleware
  Middleware corsHeaders() {
    return (innerHandler) {
      return (request) async {
        final response = await innerHandler(request);
        return response.change(headers: {
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Methods': 'GET, POST, OPTIONS',
          'Access-Control-Allow-Headers': 'Origin, Content-Type, X-Auth-Token',
        });
      };
    };
  }

  // Configure pipeline with logging and CORS
  final handler = Pipeline()
      .addMiddleware(logRequests())
      .addMiddleware(corsHeaders())
      .addHandler((request) {
        // Handle CORS preflight requests
        if (request.method == 'OPTIONS') {
          return Response.ok('', headers: {
            'Access-Control-Allow-Origin': '*',
            'Access-Control-Allow-Methods': 'GET, POST, OPTIONS',
            'Access-Control-Allow-Headers': 'Origin, Content-Type, X-Auth-Token',
          });
        }
        return router.call(request);
      });

  // Start server
  final ip = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final server = await serve(handler, ip, port);
  
  print('🚀 SDUI Server running on http://localhost:${server.port}');
  print('📱 Available screens: home, profile, settings');
  print('📡 Endpoint: POST /screens/<screenName>');
}
