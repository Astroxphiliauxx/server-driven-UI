import 'package:sdui_models/sdui_models.dart';

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
