import 'package:sdui_models/sdui_models.dart';

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
