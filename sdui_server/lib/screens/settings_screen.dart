import 'package:sdui_models/sdui_models.dart';

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
        action: ActionModel.openUrl(url: 'https://google.com'),
      ),
      
      // Go back button
      ComponentModel.button(
        label: 'Go Back',
        action: ActionModel.goBack(),
      ),
    ],
  );
}
