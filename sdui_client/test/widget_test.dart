import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sdui_models/sdui_models.dart';
import 'package:sdui_client/core/mappers/component_mapper.dart';
import 'package:sdui_client/core/handlers/action_handler.dart';

void main() {
  group('ComponentMapper Widget Tests', () {
    late ActionHandler mockHandler;

    Widget createTestWidget(Widget child) {
      return MaterialApp(
        home: Scaffold(
          body: Builder(
            builder: (context) {
              mockHandler = ActionHandler(context);
              return child;
            },
          ),
        ),
      );
    }

    group('TitleComponent', () {
      testWidgets('renders title text', (tester) async {
        await tester.pumpWidget(createTestWidget(
          Builder(builder: (context) {
            final handler = ActionHandler(context);
            return ComponentMapper.map(
              const ComponentModel.title(title: 'Test Title'),
              handler,
            );
          }),
        ));

        expect(find.text('Test Title'), findsOneWidget);
      });

      testWidgets('renders subtitle when provided', (tester) async {
        await tester.pumpWidget(createTestWidget(
          Builder(builder: (context) {
            final handler = ActionHandler(context);
            return ComponentMapper.map(
              const ComponentModel.title(
                title: 'Main Title',
                subtitle: 'Subtitle Text',
              ),
              handler,
            );
          }),
        ));

        expect(find.text('Main Title'), findsOneWidget);
        expect(find.text('Subtitle Text'), findsOneWidget);
      });

      testWidgets('does not render subtitle when null', (tester) async {
        await tester.pumpWidget(createTestWidget(
          Builder(builder: (context) {
            final handler = ActionHandler(context);
            return ComponentMapper.map(
              const ComponentModel.title(title: 'Only Title'),
              handler,
            );
          }),
        ));

        expect(find.text('Only Title'), findsOneWidget);
        // Only the title text should be present
        final textWidgets = tester.widgetList<Text>(find.byType(Text));
        expect(textWidgets.length, equals(1));
      });
    });

    group('SpacerComponent', () {
      testWidgets('renders with correct height', (tester) async {
        await tester.pumpWidget(createTestWidget(
          Builder(builder: (context) {
            final handler = ActionHandler(context);
            return ComponentMapper.map(
              const ComponentModel.spacer(height: 24.0),
              handler,
            );
          }),
        ));

        final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
        expect(sizedBox.height, equals(24.0));
      });

      testWidgets('renders with default height', (tester) async {
        await tester.pumpWidget(createTestWidget(
          Builder(builder: (context) {
            final handler = ActionHandler(context);
            return ComponentMapper.map(
              const ComponentModel.spacer(),
              handler,
            );
          }),
        ));

        final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox));
        expect(sizedBox.height, equals(16.0));
      });
    });

    group('ButtonComponent', () {
      testWidgets('renders button with label', (tester) async {
        await tester.pumpWidget(createTestWidget(
          Builder(builder: (context) {
            final handler = ActionHandler(context);
            return ComponentMapper.map(
              const ComponentModel.button(
                label: 'Click Me',
                action: ActionModel.goBack(),
              ),
              handler,
            );
          }),
        ));

        expect(find.text('Click Me'), findsOneWidget);
      });

      testWidgets('renders FilledButton when isPrimary is true', (tester) async {
        await tester.pumpWidget(createTestWidget(
          Builder(builder: (context) {
            final handler = ActionHandler(context);
            return ComponentMapper.map(
              const ComponentModel.button(
                label: 'Primary',
                action: ActionModel.goBack(),
                isPrimary: true,
              ),
              handler,
            );
          }),
        ));

        expect(find.byType(FilledButton), findsOneWidget);
        expect(find.byType(OutlinedButton), findsNothing);
      });

      testWidgets('renders OutlinedButton when isPrimary is false', (tester) async {
        await tester.pumpWidget(createTestWidget(
          Builder(builder: (context) {
            final handler = ActionHandler(context);
            return ComponentMapper.map(
              const ComponentModel.button(
                label: 'Secondary',
                action: ActionModel.goBack(),
                isPrimary: false,
              ),
              handler,
            );
          }),
        ));

        expect(find.byType(OutlinedButton), findsOneWidget);
        expect(find.byType(FilledButton), findsNothing);
      });
    });

    group('CardComponent', () {
      testWidgets('renders card with title', (tester) async {
        await tester.pumpWidget(createTestWidget(
          Builder(builder: (context) {
            final handler = ActionHandler(context);
            return SingleChildScrollView(
              child: ComponentMapper.map(
                const ComponentModel.card(title: 'Card Title'),
                handler,
              ),
            );
          }),
        ));

        expect(find.byType(Card), findsOneWidget);
        expect(find.text('Card Title'), findsOneWidget);
      });

      testWidgets('renders card with subtitle', (tester) async {
        await tester.pumpWidget(createTestWidget(
          Builder(builder: (context) {
            final handler = ActionHandler(context);
            return SingleChildScrollView(
              child: ComponentMapper.map(
                const ComponentModel.card(
                  title: 'Title',
                  subtitle: 'Subtitle',
                ),
                handler,
              ),
            );
          }),
        ));

        expect(find.text('Title'), findsOneWidget);
        expect(find.text('Subtitle'), findsOneWidget);
      });

      testWidgets('card is tappable when action is provided', (tester) async {
        await tester.pumpWidget(createTestWidget(
          Builder(builder: (context) {
            final handler = ActionHandler(context);
            return SingleChildScrollView(
              child: ComponentMapper.map(
                const ComponentModel.card(
                  title: 'Tappable Card',
                  action: ActionModel.navigate(destination: 'detail'),
                ),
                handler,
              ),
            );
          }),
        ));

        expect(find.byType(InkWell), findsOneWidget);
      });
    });

    group('InfoTileComponent', () {
      testWidgets('renders with title', (tester) async {
        await tester.pumpWidget(createTestWidget(
          Builder(builder: (context) {
            final handler = ActionHandler(context);
            return Material(
              child: ComponentMapper.map(
                const ComponentModel.infoTile(title: 'Info Title'),
                handler,
              ),
            );
          }),
        ));

        expect(find.byType(ListTile), findsOneWidget);
        expect(find.text('Info Title'), findsOneWidget);
      });

      testWidgets('renders with subtitle', (tester) async {
        await tester.pumpWidget(createTestWidget(
          Builder(builder: (context) {
            final handler = ActionHandler(context);
            return Material(
              child: ComponentMapper.map(
                const ComponentModel.infoTile(
                  title: 'Title',
                  subtitle: 'Subtitle',
                ),
                handler,
              ),
            );
          }),
        ));

        expect(find.text('Title'), findsOneWidget);
        expect(find.text('Subtitle'), findsOneWidget);
      });

      testWidgets('renders chevron when action is provided', (tester) async {
        await tester.pumpWidget(createTestWidget(
          Builder(builder: (context) {
            final handler = ActionHandler(context);
            return Material(
              child: ComponentMapper.map(
                const ComponentModel.infoTile(
                  title: 'Tappable',
                  action: ActionModel.navigate(destination: 'detail'),
                ),
                handler,
              ),
            );
          }),
        ));

        expect(find.byIcon(Icons.chevron_right), findsOneWidget);
      });

      testWidgets('renders icon when leadingIcon is provided', (tester) async {
        await tester.pumpWidget(createTestWidget(
          Builder(builder: (context) {
            final handler = ActionHandler(context);
            return Material(
              child: ComponentMapper.map(
                const ComponentModel.infoTile(
                  title: 'Notifications',
                  leadingIcon: 'notifications',
                ),
                handler,
              ),
            );
          }),
        ));

        expect(find.byIcon(Icons.notifications), findsOneWidget);
      });
    });

    group('DividerComponent', () {
      testWidgets('renders divider', (tester) async {
        await tester.pumpWidget(createTestWidget(
          Builder(builder: (context) {
            final handler = ActionHandler(context);
            return ComponentMapper.map(
              const ComponentModel.divider(),
              handler,
            );
          }),
        ));

        expect(find.byType(Divider), findsOneWidget);
      });

      testWidgets('renders divider with custom thickness', (tester) async {
        await tester.pumpWidget(createTestWidget(
          Builder(builder: (context) {
            final handler = ActionHandler(context);
            return ComponentMapper.map(
              const ComponentModel.divider(thickness: 2.0),
              handler,
            );
          }),
        ));

        final divider = tester.widget<Divider>(find.byType(Divider));
        expect(divider.thickness, equals(2.0));
      });
    });

    group('HorizontalListComponent', () {
      testWidgets('renders horizontal list with correct height', (tester) async {
        await tester.pumpWidget(createTestWidget(
          Builder(builder: (context) {
            final handler = ActionHandler(context);
            return ComponentMapper.map(
              const ComponentModel.horizontalList(
                items: [
                  ComponentModel.card(title: 'Card 1'),
                  ComponentModel.card(title: 'Card 2'),
                ],
                height: 150.0,
              ),
              handler,
            );
          }),
        ));

        final sizedBox = tester.widget<SizedBox>(find.byType(SizedBox).first);
        expect(sizedBox.height, equals(150.0));
      });

      testWidgets('renders nested cards in horizontal list', (tester) async {
        await tester.pumpWidget(createTestWidget(
          Builder(builder: (context) {
            final handler = ActionHandler(context);
            return ComponentMapper.map(
              const ComponentModel.horizontalList(
                items: [
                  ComponentModel.card(title: 'Card 1'),
                  ComponentModel.card(title: 'Card 2'),
                ],
              ),
              handler,
            );
          }),
        ));

        expect(find.byType(ListView), findsOneWidget);
        expect(find.text('Card 1'), findsOneWidget);
        expect(find.text('Card 2'), findsOneWidget);
      });
    });
  });

  group('ActionHandler Tests', () {
    testWidgets('ShowSnackbarAction shows snackbar', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    final handler = ActionHandler(context);
                    handler.execute(
                      const ActionModel.showSnackbar(message: 'Test Message'),
                    );
                  },
                  child: const Text('Show Snackbar'),
                );
              },
            ),
          ),
        ),
      );

      await tester.tap(find.text('Show Snackbar'));
      await tester.pump();

      expect(find.text('Test Message'), findsOneWidget);
    });

    testWidgets('NavigateAction navigates to new screen', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  final handler = ActionHandler(context);
                  handler.execute(
                    const ActionModel.navigate(destination: 'test'),
                  );
                },
                child: const Text('Navigate'),
              );
            },
          ),
          onGenerateRoute: (settings) {
            if (settings.name == '/test') {
              return MaterialPageRoute(
                builder: (_) => const Scaffold(
                  body: Center(child: Text('Test Screen')),
                ),
              );
            }
            return null;
          },
        ),
      );

      await tester.tap(find.text('Navigate'));
      await tester.pumpAndSettle();

      expect(find.text('Test Screen'), findsOneWidget);
    });

    testWidgets('GoBackAction pops current screen', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Scaffold(body: Center(child: Text('Home Screen'))),
          onGenerateRoute: (settings) {
            if (settings.name == '/second') {
              return MaterialPageRoute(
                builder: (context) => Scaffold(
                  body: ElevatedButton(
                    onPressed: () {
                      final handler = ActionHandler(context);
                      handler.execute(const ActionModel.goBack());
                    },
                    child: const Text('Go Back'),
                  ),
                ),
              );
            }
            return null;
          },
        ),
      );

      // Navigate to second screen
      final context = tester.element(find.text('Home Screen'));
      Navigator.pushNamed(context, '/second');
      await tester.pumpAndSettle();

      expect(find.text('Go Back'), findsOneWidget);

      // Tap go back
      await tester.tap(find.text('Go Back'));
      await tester.pumpAndSettle();

      expect(find.text('Home Screen'), findsOneWidget);
    });
  });

  group('Model to Widget Integration', () {
    testWidgets('Complete screen renders all component types', (tester) async {
      const screen = ScreenModel.vertical(
        screenTitle: 'Integration Test',
        components: [
          ComponentModel.title(title: 'Welcome', subtitle: 'Subtitle'),
          ComponentModel.spacer(height: 16),
          ComponentModel.button(
            label: 'Primary Button',
            action: ActionModel.goBack(),
            isPrimary: true,
          ),
          ComponentModel.button(
            label: 'Secondary Button',
            action: ActionModel.goBack(),
            isPrimary: false,
          ),
          ComponentModel.divider(),
          ComponentModel.infoTile(
            title: 'Info',
            subtitle: 'Details',
            leadingIcon: 'info',
          ),
        ],
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                final handler = ActionHandler(context);
                final vertical = screen as VerticalScreenModel;
                return ListView(
                  children: vertical.components
                      .map((c) => ComponentMapper.map(c, handler))
                      .toList(),
                );
              },
            ),
          ),
        ),
      );

      expect(find.text('Welcome'), findsOneWidget);
      expect(find.text('Subtitle'), findsOneWidget);
      expect(find.text('Primary Button'), findsOneWidget);
      expect(find.text('Secondary Button'), findsOneWidget);
      expect(find.byType(Divider), findsOneWidget);
      expect(find.text('Info'), findsOneWidget);
      expect(find.text('Details'), findsOneWidget);
    });
  });
}
