import 'dart:convert';
import 'package:sdui_models/sdui_models.dart';
import 'package:test/test.dart';

void main() {
  group('ActionModel', () {
    group('NavigateAction', () {
      test('creates correctly', () {
        const action = ActionModel.navigate(destination: 'profile');
        expect(action, isA<NavigateAction>());
        expect((action as NavigateAction).destination, equals('profile'));
      });

      test('serializes to JSON with runtimeType', () {
        const action = ActionModel.navigate(destination: 'profile');
        final json = action.toJson();
        expect(json['runtimeType'], equals('navigate'));
        expect(json['destination'], equals('profile'));
      });

      test('deserializes from JSON', () {
        final json = {'runtimeType': 'navigate', 'destination': 'settings'};
        final action = ActionModel.fromJson(json);
        expect(action, isA<NavigateAction>());
        expect((action as NavigateAction).destination, equals('settings'));
      });
    });

    group('GoBackAction', () {
      test('creates correctly', () {
        const action = ActionModel.goBack();
        expect(action, isA<GoBackAction>());
      });

      test('serializes and deserializes', () {
        const action = ActionModel.goBack();
        final json = action.toJson();
        expect(json['runtimeType'], equals('goBack'));
        
        final restored = ActionModel.fromJson(json);
        expect(restored, isA<GoBackAction>());
      });
    });

    group('ShowSnackbarAction', () {
      test('creates correctly', () {
        const action = ActionModel.showSnackbar(message: 'Hello World');
        expect(action, isA<ShowSnackbarAction>());
        expect((action as ShowSnackbarAction).message, equals('Hello World'));
      });

      test('round-trip serialization', () {
        const action = ActionModel.showSnackbar(message: 'Test message');
        final json = action.toJson();
        final restored = ActionModel.fromJson(json);
        expect(restored, equals(action));
      });
    });

    group('OpenUrlAction', () {
      test('creates correctly', () {
        const action = ActionModel.openUrl(url: 'https://flutter.dev');
        expect(action, isA<OpenUrlAction>());
        expect((action as OpenUrlAction).url, equals('https://flutter.dev'));
      });

      test('round-trip serialization', () {
        const action = ActionModel.openUrl(url: 'https://dart.dev');
        final json = action.toJson();
        final restored = ActionModel.fromJson(json);
        expect(restored, equals(action));
      });
    });

    group('LogEventAction', () {
      test('creates correctly without params', () {
        const action = ActionModel.logEvent(eventName: 'button_click');
        expect(action, isA<LogEventAction>());
        expect((action as LogEventAction).eventName, equals('button_click'));
        expect(action.params, isNull);
      });

      test('creates correctly with params', () {
        const action = ActionModel.logEvent(
          eventName: 'screen_view',
          params: {'screen_name': 'home'},
        );
        expect((action as LogEventAction).params, equals({'screen_name': 'home'}));
      });

      test('round-trip serialization', () {
        const action = ActionModel.logEvent(
          eventName: 'purchase',
          params: {'item_id': '123', 'price': 9.99},
        );
        final json = action.toJson();
        final restored = ActionModel.fromJson(json);
        expect((restored as LogEventAction).eventName, equals('purchase'));
        expect(restored.params!['item_id'], equals('123'));
      });
    });
  });

  group('ComponentModel', () {
    group('TitleComponent', () {
      test('creates with required title', () {
        const component = ComponentModel.title(title: 'Hello');
        expect(component, isA<TitleComponent>());
        expect((component as TitleComponent).title, equals('Hello'));
        expect(component.subtitle, isNull);
      });

      test('creates with optional subtitle', () {
        const component = ComponentModel.title(
          title: 'Main Title',
          subtitle: 'Subtitle text',
        );
        expect((component as TitleComponent).subtitle, equals('Subtitle text'));
      });

      test('round-trip serialization', () {
        const component = ComponentModel.title(
          title: 'Test',
          subtitle: 'Sub',
        );
        final json = component.toJson();
        final restored = ComponentModel.fromJson(json);
        expect(restored, equals(component));
      });
    });

    group('SpacerComponent', () {
      test('creates with default height', () {
        const component = ComponentModel.spacer();
        expect((component as SpacerComponent).height, equals(16.0));
      });

      test('creates with custom height', () {
        const component = ComponentModel.spacer(height: 24.0);
        expect((component as SpacerComponent).height, equals(24.0));
      });

      test('round-trip serialization', () {
        const component = ComponentModel.spacer(height: 32.0);
        final json = component.toJson();
        final restored = ComponentModel.fromJson(json);
        expect(restored, equals(component));
      });
    });

    group('ImageBannerComponent', () {
      test('creates with default height', () {
        const component = ComponentModel.imageBanner(
          imageUrl: 'https://example.com/image.jpg',
        );
        expect((component as ImageBannerComponent).height, equals(200.0));
      });

      test('creates with custom height', () {
        const component = ComponentModel.imageBanner(
          imageUrl: 'https://example.com/image.jpg',
          height: 300.0,
        );
        expect((component as ImageBannerComponent).height, equals(300.0));
      });
    });

    group('ButtonComponent', () {
      test('creates with required fields and default isPrimary', () {
        const component = ComponentModel.button(
          label: 'Click Me',
          action: ActionModel.navigate(destination: 'next'),
        );
        expect((component as ButtonComponent).label, equals('Click Me'));
        expect(component.isPrimary, isFalse);
        expect(component.action, isA<NavigateAction>());
      });

      test('creates with isPrimary true', () {
        const component = ComponentModel.button(
          label: 'Submit',
          action: ActionModel.goBack(),
          isPrimary: true,
        );
        expect((component as ButtonComponent).isPrimary, isTrue);
      });

      test('round-trip serialization preserves action', () {
        const component = ComponentModel.button(
          label: 'Test',
          action: ActionModel.showSnackbar(message: 'Done!'),
          isPrimary: true,
        );
        // Simulate network transfer: object -> JSON string -> Map -> object
        final jsonString = jsonEncode(component.toJson());
        final parsed = jsonDecode(jsonString) as Map<String, dynamic>;
        final restored = ComponentModel.fromJson(parsed);
        final restoredButton = restored as ButtonComponent;
        expect(restoredButton.label, equals('Test'));
        expect(restoredButton.action, isA<ShowSnackbarAction>());
        expect((restoredButton.action as ShowSnackbarAction).message, equals('Done!'));
      });
    });

    group('CardComponent', () {
      test('creates with required title only', () {
        const component = ComponentModel.card(title: 'Card Title');
        expect((component as CardComponent).title, equals('Card Title'));
        expect(component.subtitle, isNull);
        expect(component.imageUrl, isNull);
        expect(component.action, isNull);
      });

      test('creates with all optional fields', () {
        const component = ComponentModel.card(
          title: 'Full Card',
          subtitle: 'Card description',
          imageUrl: 'https://example.com/card.jpg',
          action: ActionModel.navigate(destination: 'details'),
        );
        final card = component as CardComponent;
        expect(card.subtitle, equals('Card description'));
        expect(card.imageUrl, equals('https://example.com/card.jpg'));
        expect(card.action, isA<NavigateAction>());
      });
    });

    group('HorizontalListComponent', () {
      test('creates with items and default height', () {
        const component = ComponentModel.horizontalList(
          items: [
            ComponentModel.card(title: 'Card 1'),
            ComponentModel.card(title: 'Card 2'),
          ],
        );
        expect((component as HorizontalListComponent).items.length, equals(2));
        expect(component.height, equals(120.0));
      });

      test('round-trip serialization preserves nested items', () {
        const component = ComponentModel.horizontalList(
          items: [
            ComponentModel.card(title: 'Card 1'),
            ComponentModel.card(title: 'Card 2', subtitle: 'Sub'),
          ],
          height: 150.0,
        );
        // Simulate network transfer: object -> JSON string -> Map -> object
        final jsonString = jsonEncode(component.toJson());
        final parsed = jsonDecode(jsonString) as Map<String, dynamic>;
        final restored = ComponentModel.fromJson(parsed);
        final list = restored as HorizontalListComponent;
        expect(list.items.length, equals(2));
        expect(list.height, equals(150.0));
        expect((list.items[1] as CardComponent).subtitle, equals('Sub'));
      });
    });

    group('InfoTileComponent', () {
      test('creates with required title only', () {
        const component = ComponentModel.infoTile(title: 'Info Title');
        expect((component as InfoTileComponent).title, equals('Info Title'));
        expect(component.subtitle, isNull);
        expect(component.avatarUrl, isNull);
        expect(component.leadingIcon, isNull);
        expect(component.action, isNull);
      });

      test('creates with avatar', () {
        const component = ComponentModel.infoTile(
          title: 'User Name',
          subtitle: 'user@email.com',
          avatarUrl: 'https://example.com/avatar.jpg',
        );
        expect((component as InfoTileComponent).avatarUrl, isNotNull);
      });

      test('creates with leading icon', () {
        const component = ComponentModel.infoTile(
          title: 'Settings',
          leadingIcon: 'settings',
        );
        expect((component as InfoTileComponent).leadingIcon, equals('settings'));
      });
    });

    group('DividerComponent', () {
      test('creates with default thickness', () {
        const component = ComponentModel.divider();
        expect((component as DividerComponent).thickness, equals(1.0));
      });

      test('creates with custom thickness', () {
        const component = ComponentModel.divider(thickness: 2.0);
        expect((component as DividerComponent).thickness, equals(2.0));
      });
    });
  });

  group('ScreenModel', () {
    group('VerticalScreenModel', () {
      test('creates with required fields', () {
        const screen = ScreenModel.vertical(
          screenTitle: 'Home',
          components: [],
        );
        expect(screen, isA<VerticalScreenModel>());
        expect((screen as VerticalScreenModel).screenTitle, equals('Home'));
        expect(screen.components, isEmpty);
      });

      test('creates with components', () {
        const screen = ScreenModel.vertical(
          screenTitle: 'Test Screen',
          components: [
            ComponentModel.title(title: 'Welcome'),
            ComponentModel.spacer(),
            ComponentModel.button(
              label: 'Continue',
              action: ActionModel.navigate(destination: 'next'),
            ),
          ],
        );
        expect((screen as VerticalScreenModel).components.length, equals(3));
      });

      test('round-trip serialization preserves all nested data', () {
        const screen = ScreenModel.vertical(
          screenTitle: 'Complex Screen',
          components: [
            ComponentModel.title(title: 'Title'),
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
              action: ActionModel.showSnackbar(message: 'Done'),
              isPrimary: true,
            ),
          ],
        );
        
        final json = screen.toJson();
        final jsonString = jsonEncode(json);
        final decodedJson = jsonDecode(jsonString) as Map<String, dynamic>;
        final restored = ScreenModel.fromJson(decodedJson);
        
        expect(restored, isA<VerticalScreenModel>());
        final vertical = restored as VerticalScreenModel;
        expect(vertical.screenTitle, equals('Complex Screen'));
        expect(vertical.components.length, equals(3));
        
        // Verify nested horizontal list
        final horizontalList = vertical.components[1] as HorizontalListComponent;
        expect(horizontalList.items.length, equals(1));
        final card = horizontalList.items[0] as CardComponent;
        expect(card.action, isA<NavigateAction>());
      });
    });

    group('ErrorScreenModel', () {
      test('creates with required error message', () {
        const screen = ScreenModel.error(errorMessage: 'Something went wrong');
        expect(screen, isA<ErrorScreenModel>());
        expect((screen as ErrorScreenModel).errorMessage, equals('Something went wrong'));
        expect(screen.errorCode, isNull);
        expect(screen.retryAction, isNull);
      });

      test('creates with all optional fields', () {
        const screen = ScreenModel.error(
          errorMessage: 'Not Found',
          errorCode: '404',
          retryAction: ActionModel.navigate(destination: 'home'),
        );
        expect((screen as ErrorScreenModel).errorCode, equals('404'));
        expect(screen.retryAction, isA<NavigateAction>());
      });

      test('round-trip serialization', () {
        const screen = ScreenModel.error(
          errorMessage: 'Server Error',
          errorCode: '500',
          retryAction: ActionModel.goBack(),
        );
        // Simulate network transfer: object -> JSON string -> Map -> object
        final jsonString = jsonEncode(screen.toJson());
        final parsed = jsonDecode(jsonString) as Map<String, dynamic>;
        final restored = ScreenModel.fromJson(parsed);
        expect(restored, equals(screen));
      });
    });
  });

  group('Integration Tests', () {
    test('Full home screen JSON matches expected structure', () {
      const screen = ScreenModel.vertical(
        screenTitle: 'Home',
        components: [
          ComponentModel.title(title: 'Welcome'),
          ComponentModel.imageBanner(
            imageUrl: 'https://example.com/banner.jpg',
            height: 200,
          ),
          ComponentModel.button(
            label: 'Go to Profile',
            action: ActionModel.navigate(destination: 'profile'),
            isPrimary: true,
          ),
        ],
      );

      // Convert to JSON string and parse back to get proper Map structure
      final jsonString = jsonEncode(screen.toJson());
      final json = jsonDecode(jsonString) as Map<String, dynamic>;
      
      expect(json['runtimeType'], equals('vertical'));
      expect(json['screenTitle'], equals('Home'));
      expect(json['components'], isA<List>());
      
      final components = json['components'] as List;
      expect(components.length, equals(3));
      
      expect(components[0]['runtimeType'], equals('title'));
      expect(components[1]['runtimeType'], equals('imageBanner'));
      expect(components[2]['runtimeType'], equals('button'));
      expect(components[2]['action']['runtimeType'], equals('navigate'));
    });

    test('JSON can be encoded and decoded through string format', () {
      const original = ScreenModel.vertical(
        screenTitle: 'Test',
        components: [
          ComponentModel.infoTile(
            title: 'User',
            avatarUrl: 'https://example.com/avatar.jpg',
            action: ActionModel.logEvent(
              eventName: 'tap_user',
              params: {'user_id': '123'},
            ),
          ),
        ],
      );

      // Simulate network transfer: object -> JSON string -> object
      final jsonString = jsonEncode(original.toJson());
      final parsed = jsonDecode(jsonString) as Map<String, dynamic>;
      final restored = ScreenModel.fromJson(parsed);

      expect(restored, isA<VerticalScreenModel>());
      final vertical = restored as VerticalScreenModel;
      expect(vertical.components.length, equals(1));
      
      final infoTile = vertical.components[0] as InfoTileComponent;
      expect(infoTile.action, isA<LogEventAction>());
      final logAction = infoTile.action as LogEventAction;
      expect(logAction.eventName, equals('tap_user'));
      expect(logAction.params!['user_id'], equals('123'));
    });
  });
}
