import 'dart:convert';

import 'package:sdui_models/sdui_models.dart';
import 'package:test/test.dart';

// Import the server module to test screen builders directly
// Note: In a real project, screen builders would be in a separate library
// For this assignment, we test the JSON output structure

void main() {
  group('Screen JSON Structure Tests', () {
    group('Home Screen', () {
      test('home screen JSON has correct structure', () {
        // Simulate what the server returns for home screen
        const screen = ScreenModel.vertical(
          screenTitle: 'Home',
          components: [
            ComponentModel.title(title: 'Welcome to SDUI App'),
            ComponentModel.imageBanner(
              imageUrl: 'https://picsum.photos/seed/sdui/400/200',
              height: 200,
            ),
            ComponentModel.spacer(height: 16),
            ComponentModel.horizontalList(
              height: 140,
              items: [
                ComponentModel.card(title: 'Card 1', subtitle: 'This is card number 1'),
                ComponentModel.card(title: 'Card 2', subtitle: 'This is card number 2'),
              ],
            ),
            ComponentModel.spacer(height: 24),
            ComponentModel.button(
              label: 'Go to Profile',
              isPrimary: true,
              action: ActionModel.navigate(destination: 'profile'),
            ),
            ComponentModel.button(
              label: 'Go to Settings',
              action: ActionModel.navigate(destination: 'settings'),
            ),
          ],
        );

        final jsonString = jsonEncode(screen.toJson());
        final json = jsonDecode(jsonString) as Map<String, dynamic>;

        expect(json['runtimeType'], equals('vertical'));
        expect(json['screenTitle'], equals('Home'));
        expect(json['components'], isA<List>());
      });

      test('home screen has navigation buttons', () {
        const screen = ScreenModel.vertical(
          screenTitle: 'Home',
          components: [
            ComponentModel.button(
              label: 'Go to Profile',
              isPrimary: true,
              action: ActionModel.navigate(destination: 'profile'),
            ),
            ComponentModel.button(
              label: 'Go to Settings',
              action: ActionModel.navigate(destination: 'settings'),
            ),
          ],
        );

        final vertical = screen as VerticalScreenModel;
        final buttons = vertical.components.whereType<ButtonComponent>().toList();

        expect(buttons.length, equals(2));
        expect(buttons[0].action, isA<NavigateAction>());
        expect((buttons[0].action as NavigateAction).destination, equals('profile'));
        expect(buttons[1].action, isA<NavigateAction>());
        expect((buttons[1].action as NavigateAction).destination, equals('settings'));
      });

      test('home screen has horizontal list with cards', () {
        const screen = ScreenModel.vertical(
          screenTitle: 'Home',
          components: [
            ComponentModel.horizontalList(
              height: 140,
              items: [
                ComponentModel.card(title: 'Card 1'),
                ComponentModel.card(title: 'Card 2'),
                ComponentModel.card(title: 'Card 3'),
                ComponentModel.card(title: 'Card 4'),
              ],
            ),
          ],
        );

        final vertical = screen as VerticalScreenModel;
        final horizontalLists = vertical.components.whereType<HorizontalListComponent>().toList();

        expect(horizontalLists, isNotEmpty);
        expect(horizontalLists.first.items.length, equals(4));
        expect(horizontalLists.first.items.first, isA<CardComponent>());
      });
    });

    group('Profile Screen', () {
      test('profile screen has correct structure', () {
        const screen = ScreenModel.vertical(
          screenTitle: 'Profile',
          components: [
            ComponentModel.title(title: 'Your Profile'),
            ComponentModel.spacer(height: 16),
            ComponentModel.infoTile(
              avatarUrl: 'https://i.pravatar.cc/150?u=sdui',
              title: 'John Doe',
              subtitle: 'john.doe@email.com',
            ),
            ComponentModel.spacer(height: 16),
            ComponentModel.card(
              title: 'Your Stats',
              subtitle: '150 posts • 2.5k followers • 890 following',
            ),
            ComponentModel.spacer(height: 24),
            ComponentModel.button(
              label: 'Show Message',
              isPrimary: true,
              action: ActionModel.showSnackbar(message: 'Hello from Server-Driven UI!'),
            ),
            ComponentModel.button(
              label: 'Go Back',
              action: ActionModel.goBack(),
            ),
          ],
        );

        final jsonString = jsonEncode(screen.toJson());
        final json = jsonDecode(jsonString) as Map<String, dynamic>;

        expect(json['runtimeType'], equals('vertical'));
        expect(json['screenTitle'], equals('Profile'));
      });

      test('profile screen has snackbar action', () {
        const screen = ScreenModel.vertical(
          screenTitle: 'Profile',
          components: [
            ComponentModel.button(
              label: 'Show Message',
              isPrimary: true,
              action: ActionModel.showSnackbar(message: 'Hello from Server-Driven UI!'),
            ),
          ],
        );

        final vertical = screen as VerticalScreenModel;
        final buttons = vertical.components.whereType<ButtonComponent>().toList();
        final snackbarButtons = buttons.where((b) => b.action is ShowSnackbarAction).toList();

        expect(snackbarButtons, isNotEmpty);
        final action = snackbarButtons.first.action as ShowSnackbarAction;
        expect(action.message, contains('Hello'));
      });

      test('profile screen has go back action', () {
        const screen = ScreenModel.vertical(
          screenTitle: 'Profile',
          components: [
            ComponentModel.button(
              label: 'Go Back',
              action: ActionModel.goBack(),
            ),
          ],
        );

        final vertical = screen as VerticalScreenModel;
        final buttons = vertical.components.whereType<ButtonComponent>().toList();
        final goBackButtons = buttons.where((b) => b.action is GoBackAction).toList();

        expect(goBackButtons, isNotEmpty);
      });

      test('profile screen has info tile with avatar', () {
        const screen = ScreenModel.vertical(
          screenTitle: 'Profile',
          components: [
            ComponentModel.infoTile(
              avatarUrl: 'https://i.pravatar.cc/150?u=sdui',
              title: 'John Doe',
              subtitle: 'john.doe@email.com',
            ),
          ],
        );

        final vertical = screen as VerticalScreenModel;
        final infoTiles = vertical.components.whereType<InfoTileComponent>().toList();

        expect(infoTiles, isNotEmpty);
        expect(infoTiles.first.avatarUrl, isNotNull);
        expect(infoTiles.first.title, equals('John Doe'));
      });
    });

    group('Settings Screen', () {
      test('settings screen has correct structure', () {
        const screen = ScreenModel.vertical(
          screenTitle: 'Settings',
          components: [
            ComponentModel.title(title: 'Settings'),
            ComponentModel.spacer(height: 16),
            ComponentModel.infoTile(
              leadingIcon: 'notifications',
              title: 'Notifications',
              subtitle: 'Manage your notification preferences',
            ),
            ComponentModel.divider(),
            ComponentModel.infoTile(
              leadingIcon: 'privacy',
              title: 'Privacy',
              subtitle: 'Control your data and privacy settings',
            ),
            ComponentModel.divider(),
            ComponentModel.infoTile(
              leadingIcon: 'info',
              title: 'About',
              subtitle: 'App version 1.0.0',
            ),
            ComponentModel.spacer(height: 24),
            ComponentModel.button(
              label: 'Visit Flutter Website',
              isPrimary: true,
              action: ActionModel.openUrl(url: 'https://flutter.dev'),
            ),
            ComponentModel.button(
              label: 'Go Back',
              action: ActionModel.goBack(),
            ),
          ],
        );

        final jsonString = jsonEncode(screen.toJson());
        final json = jsonDecode(jsonString) as Map<String, dynamic>;

        expect(json['runtimeType'], equals('vertical'));
        expect(json['screenTitle'], equals('Settings'));
      });

      test('settings screen has open URL action', () {
        const screen = ScreenModel.vertical(
          screenTitle: 'Settings',
          components: [
            ComponentModel.button(
              label: 'Visit Flutter Website',
              isPrimary: true,
              action: ActionModel.openUrl(url: 'https://flutter.dev'),
            ),
          ],
        );

        final vertical = screen as VerticalScreenModel;
        final buttons = vertical.components.whereType<ButtonComponent>().toList();
        final urlButtons = buttons.where((b) => b.action is OpenUrlAction).toList();

        expect(urlButtons, isNotEmpty);
        final action = urlButtons.first.action as OpenUrlAction;
        expect(action.url, contains('flutter.dev'));
      });

      test('settings screen has info tiles with leading icons', () {
        const screen = ScreenModel.vertical(
          screenTitle: 'Settings',
          components: [
            ComponentModel.infoTile(
              leadingIcon: 'notifications',
              title: 'Notifications',
              subtitle: 'Manage your notification preferences',
            ),
            ComponentModel.infoTile(
              leadingIcon: 'privacy',
              title: 'Privacy',
              subtitle: 'Control your data and privacy settings',
            ),
            ComponentModel.infoTile(
              leadingIcon: 'info',
              title: 'About',
              subtitle: 'App version 1.0.0',
            ),
          ],
        );

        final vertical = screen as VerticalScreenModel;
        final infoTiles = vertical.components.whereType<InfoTileComponent>().toList();

        expect(infoTiles.length, equals(3));
        expect(infoTiles.every((t) => t.leadingIcon != null), isTrue);
      });

      test('settings screen has dividers', () {
        const screen = ScreenModel.vertical(
          screenTitle: 'Settings',
          components: [
            ComponentModel.infoTile(title: 'Notifications'),
            ComponentModel.divider(),
            ComponentModel.infoTile(title: 'Privacy'),
            ComponentModel.divider(),
            ComponentModel.infoTile(title: 'About'),
          ],
        );

        final vertical = screen as VerticalScreenModel;
        final dividers = vertical.components.whereType<DividerComponent>().toList();

        expect(dividers.length, equals(2));
      });
    });

    group('Error Screen', () {
      test('error screen has correct structure', () {
        const screen = ScreenModel.error(
          errorMessage: 'Screen "unknown" not found',
          errorCode: '404',
        );

        final jsonString = jsonEncode(screen.toJson());
        final json = jsonDecode(jsonString) as Map<String, dynamic>;

        expect(json['runtimeType'], equals('error'));
        expect(json['errorMessage'], contains('not found'));
        expect(json['errorCode'], equals('404'));
      });

      test('error screen with retry action', () {
        const screen = ScreenModel.error(
          errorMessage: 'Network error',
          retryAction: ActionModel.navigate(destination: 'home'),
        );

        expect(screen, isA<ErrorScreenModel>());
        final error = screen as ErrorScreenModel;
        expect(error.retryAction, isA<NavigateAction>());
      });
    });
  });

  group('JSON Serialization Integration', () {
    test('complete screen round-trip through JSON string', () {
      const original = ScreenModel.vertical(
        screenTitle: 'Test Screen',
        components: [
          ComponentModel.title(title: 'Welcome', subtitle: 'Subtitle'),
          ComponentModel.imageBanner(imageUrl: 'https://example.com/image.jpg'),
          ComponentModel.horizontalList(
            items: [
              ComponentModel.card(
                title: 'Card',
                action: ActionModel.navigate(destination: 'detail'),
              ),
            ],
          ),
          ComponentModel.button(
            label: 'Action',
            action: ActionModel.showSnackbar(message: 'Done!'),
            isPrimary: true,
          ),
          ComponentModel.infoTile(
            title: 'Info',
            leadingIcon: 'info',
            action: ActionModel.logEvent(
              eventName: 'tap_info',
              params: {'source': 'test'},
            ),
          ),
        ],
      );

      // Simulate network: Dart object → JSON string → Dart object
      final jsonString = jsonEncode(original.toJson());
      final restored = ScreenModel.fromJson(jsonDecode(jsonString));

      expect(restored, isA<VerticalScreenModel>());
      final vertical = restored as VerticalScreenModel;
      expect(vertical.screenTitle, equals('Test Screen'));
      expect(vertical.components.length, equals(5));

      // Verify nested structures survived round-trip
      final horizontalList = vertical.components[2] as HorizontalListComponent;
      expect(horizontalList.items.length, equals(1));
      final card = horizontalList.items[0] as CardComponent;
      expect(card.action, isA<NavigateAction>());

      final infoTile = vertical.components[4] as InfoTileComponent;
      expect(infoTile.action, isA<LogEventAction>());
      final logAction = infoTile.action as LogEventAction;
      expect(logAction.params!['source'], equals('test'));
    });

    test('all action types serialize correctly', () {
      final actions = [
        const ActionModel.navigate(destination: 'profile'),
        const ActionModel.goBack(),
        const ActionModel.showSnackbar(message: 'Hello'),
        const ActionModel.openUrl(url: 'https://example.com'),
        const ActionModel.logEvent(eventName: 'test', params: {'key': 'value'}),
      ];

      for (final action in actions) {
        final jsonString = jsonEncode(action.toJson());
        final restored = ActionModel.fromJson(jsonDecode(jsonString));
        expect(restored.runtimeType, equals(action.runtimeType));
      }
    });

    test('all component types serialize correctly', () {
      final components = [
        const ComponentModel.title(title: 'Test'),
        const ComponentModel.spacer(height: 16),
        const ComponentModel.imageBanner(imageUrl: 'https://example.com/img.jpg'),
        const ComponentModel.button(label: 'Click', action: ActionModel.goBack()),
        const ComponentModel.card(title: 'Card'),
        const ComponentModel.horizontalList(items: [ComponentModel.card(title: 'Nested')]),
        const ComponentModel.infoTile(title: 'Info'),
        const ComponentModel.divider(),
      ];

      for (final component in components) {
        final jsonString = jsonEncode(component.toJson());
        final restored = ComponentModel.fromJson(jsonDecode(jsonString));
        expect(restored.runtimeType, equals(component.runtimeType));
      }
    });
  });
}
