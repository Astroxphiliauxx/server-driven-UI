import 'dart:convert';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:sdui_models/sdui_models.dart';

import 'package:sdui_server/screens/screens.dart';


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
  
  print('SDUI Server running on http://localhost:${server.port}');
  print('Available screens: home, profile, settings');
  print('Endpoint: POST /screens/<screenName>');
}
