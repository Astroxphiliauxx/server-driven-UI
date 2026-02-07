import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sdui_models/sdui_models.dart';

class SduiApiService {
  final String baseUrl;
  final http.Client _client;

  SduiApiService({required this.baseUrl}) : _client = http.Client();

  /// Fetches the screen model from the server
  Future<ScreenModel> fetchScreen(String screenName) async {
    try {
      // Using POST as designed in the server
      final response = await _client.post(
        Uri.parse('$baseUrl/screens/$screenName'),
      );
      
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        return ScreenModel.fromJson(json);
      } else {
        throw Exception('Failed to load screen: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching screen: $e');
    }
  }
}
