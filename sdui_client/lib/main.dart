import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/api/sdui_api_service.dart';
import 'screens/sdui_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => SduiApiService(
        // Use localhost for web/desktop/iOS, and 10.0.2.2 for Android emulator
        baseUrl: 'http://localhost:8080', 
         //baseUrl: 'http://10.0.2.2:8080', 
      ),
      child: MaterialApp(
        title: 'SDUI Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // Start with Home screen
        home: const SduiScreen(screenName: 'home'),
        
        // Handle dynamic navigation
        onGenerateRoute: (settings) {
          // Extract screen name from route (e.g., "/profile" -> "profile")
          final screenName = settings.name?.replaceFirst('/', '') ?? 'home';
          return MaterialPageRoute(
            builder: (_) => SduiScreen(screenName: screenName),
          );
        },
      ),
    );
  }
}
