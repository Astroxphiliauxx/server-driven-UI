import 'package:flutter/material.dart';
import 'package:sdui_models/sdui_models.dart';
import 'package:url_launcher/url_launcher.dart';

/// Handles actions triggered by UI components
class ActionHandler {
  final BuildContext context;
  
  ActionHandler(this.context);
  
  void execute(ActionModel action) {
    switch (action) {
      case NavigateAction(:final destination):
        Navigator.pushNamed(context, '/$destination');
        
      case GoBackAction():
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        }
        
      case ShowSnackbarAction(:final message):
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            behavior: SnackBarBehavior.floating,
          ),
        );
        
      case OpenUrlAction(:final url):
        _launchUrl(url);
        
      case LogEventAction(:final eventName, :final params):
        debugPrint('ANALYTICS: $eventName, params: $params');
    }
  }

  Future<void> _launchUrl(String urlString) async {
    final uri = Uri.parse(urlString);
    if (!await launchUrl(uri)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not launch $urlString')),
      );
    }
  }
}
