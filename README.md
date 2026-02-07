# 🎯 Server-Driven UI (SDUI) Implementation Guide

This document tracks the SDUI assignment implementation. Each phase documents **what** was built, **how** it works, and **why** we chose this approach.

---

## ✅ Progress Tracker

| Phase | Status | Description |
|-------|--------|-------------|
| **Phase 1** | ✅ Complete | Project Setup |
| **Phase 2** | ✅ Complete | Shared Models Layer |
| **Phase 3** | ✅ Complete | Server Implementation |
| **Phase 4** | ✅ Complete | Client Implementation |
| **Phase 5** | ✅ Complete | Integration & Testing |

---

## 📁 Project Structure

```
server-driven-UI/
├── sdui_models/     # Shared models (used by both server & client)
├── sdui_server/     # Dart backend server
└── sdui_client/     # Flutter mobile app
```

---

# ✅ PHASE 1: Project Setup (COMPLETED)

## What We Built
Three separate packages that work together:

| Package | Type | Purpose |
|---------|------|---------|
| `sdui_models` | Dart package | Shared data models |
| `sdui_server` | Dart server (shelf) | Emits UI as JSON |
| `sdui_client` | Flutter app | Renders UI dynamically |

## How We Built It

### Commands Used
```bash
# Created shared models package
dart create -t package sdui_models

# Created server with shelf template
dart create -t server-shelf sdui_server

# Created Flutter app
flutter create sdui_client
```

### Package Linking
Both `sdui_server` and `sdui_client` reference `sdui_models` via path dependency:

```yaml
# In sdui_server/pubspec.yaml and sdui_client/pubspec.yaml
dependencies:
  sdui_models:
    path: ../sdui_models
```

## Why This Approach
- **Shared Models**: One source of truth prevents serialization mismatches between server and client
- **Separate Packages**: Clean separation of concerns - server doesn't need Flutter, client doesn't need shelf
- **Path Dependencies**: Easy local development without publishing packages

---

# ✅ PHASE 2: Shared Models Layer (COMPLETED)

## What We Built

Three model types using `freezed` for code generation:

### 1. Action Models (`action_model.dart`)
Define what happens when user interacts with UI:

| Action | Purpose | Fields |
|--------|---------|--------|
| `navigate` | Go to another screen | `destination` |
| `goBack` | Return to previous screen | - |
| `showSnackbar` | Display a message | `message` |
| `openUrl` | Open browser | `url` |
| `logEvent` | Analytics logging | `eventName`, `params` |

### 2. Component Models (`component_model.dart`)
Define UI elements the client renders:

| Component | Purpose | Key Fields |
|-----------|---------|------------|
| `title` | Heading text | `title`, `subtitle` |
| `spacer` | Vertical spacing | `height` |
| `imageBanner` | Full-width image | `imageUrl`, `height` |
| `button` | Clickable button | `label`, `action` |
| `card` | Content card | `title`, `subtitle`, `imageUrl` |
| `horizontalList` | Scrollable row | `items` (list of components) |
| `infoTile` | Info row with avatar | `title`, `subtitle`, `avatarUrl` |
| `divider` | Horizontal line | `thickness` |

### 3. Screen Models (`screen_model.dart`)
Define complete screens:

| Screen | Purpose | Fields |
|--------|---------|--------|
| `vertical` | Main content screen | `screenTitle`, `components` |
| `error` | Error display | `errorMessage`, `retryAction` |

## How We Built It

### File Structure
```
sdui_models/lib/
├── src/models/
│   ├── action_model.dart       # 5 action types
│   ├── component_model.dart    # 8 component types
│   └── screen_model.dart       # 2 screen types
└── sdui_models.dart            # Barrel export
```

### Using Freezed
Each model uses `@Freezed(unionKey: 'runtimeType')` for polymorphic JSON:

```dart
@Freezed(unionKey: 'runtimeType')
sealed class ActionModel with _$ActionModel {
  const factory ActionModel.navigate({
    required String destination,
  }) = NavigateAction;
  
  const factory ActionModel.goBack() = GoBackAction;
  // ... more actions
  
  factory ActionModel.fromJson(Map<String, dynamic> json) =>
      _$ActionModelFromJson(json);
}
```

### Generated JSON Format
```json
{
  "runtimeType": "navigate",
  "destination": "profile"
}
```

### Build Command
```bash
cd sdui_models
dart pub get
dart run build_runner build --delete-conflicting-outputs
```

This generates:
- `*.freezed.dart` - immutability, copyWith, equality
- `*.g.dart` - JSON serialization

## Why This Approach

| Decision | Reason |
|----------|--------|
| **Freezed** | Auto-generates boilerplate (immutability, JSON, equality) |
| **Sealed classes** | Compiler enforces handling all types in switch statements |
| **unionKey: 'runtimeType'** | JSON includes type discriminator for polymorphic parsing |
| **Single file per model type** | Simpler than one file per variant - this is just an assignment |
| **Default values** | Components like `spacer` have sensible defaults (`height: 16.0`) |

---

# ✅ PHASE 3: Server Implementation (COMPLETED)

## What We Built

A Dart HTTP server using `shelf` that returns screen definitions as JSON.

### File Structure
```
sdui_server/bin/
└── server.dart    # Server + all screen builders (kept simple in one file)
```

### Endpoint
```
POST /screens/{screen_name}
```

| Screen Name | Description |
|-------------|-------------|
| `home` | Main landing with banner, cards, nav buttons |
| `profile` | User info, stats, snackbar demo |
| `settings` | Settings tiles, URL launcher demo |

### Screen Components Summary

**Home Screen:**
- Title: "Welcome to SDUI App"
- Image banner (picsum.photos)
- Horizontal list of 4 cards
- Button → Navigate to Profile
- Button → Navigate to Settings

**Profile Screen:**
- Title: "Your Profile"
- Info tile with avatar, name, email
- Stats card
- Button → Show snackbar
- Button → Go back

**Settings Screen:**
- Title: "Settings"
- Info tiles (Notifications, Privacy, About)
- Dividers between sections
- Button → Open Flutter website
- Button → Go back

## How We Built It

### Screen Builder Pattern
Each screen is a function that returns a `ScreenModel`:

```dart
ScreenModel buildHomeScreen() {
  return ScreenModel.vertical(
    screenTitle: 'Home',
    components: [
      ComponentModel.title(title: 'Welcome to SDUI App'),
      ComponentModel.button(
        label: 'Go to Profile',
        action: ActionModel.navigate(destination: 'profile'),
      ),
      // ... more components
    ],
  );
}
```

### Router Setup
```dart
router.post('/screens/<screenName>', (Request request, String screenName) {
  final screen = switch (screenName) {
    'home' => buildHomeScreen(),
    'profile' => buildProfileScreen(),
    'settings' => buildSettingsScreen(),
    _ => ScreenModel.error(errorMessage: 'Screen not found'),
  };
  return Response.ok(jsonEncode(screen.toJson()));
});
```

## Why This Approach

| Decision | Reason |
|----------|--------|
| **Single file** | Assignment scope - no need for complex structure |
| **Builder functions** | Easy to read, maintain, and test each screen |
| **Switch expression** | Clean routing, compiler ensures all cases handled |
| **POST method** | Could send user context in body for personalization |

## How to Test

```bash
cd sdui_server
dart pub get
dart run bin/server.dart
```

**Option 1: Hardware/Browser (GET)**
Open in your browser:  
`http://localhost:8080/screens/home`

**Option 2: Terminal (POST)**
```bash
curl -X POST http://localhost:8080/screens/home
```

---

# ✅ PHASE 4: Client Implementation (COMPLETED)

## What We Built

A Flutter app that dynamically fetches and renders screens based on server JSON.

### File Structure
```
sdui_client/lib/
├── core/
│   ├── api/
│   │   └── sdui_api_service.dart   # Fetches JSON
│   ├── handlers/
│   │   └── action_handler.dart     # Navigation, Snackbar, etc.
│   └── mappers/
│       └── component_mapper.dart   # JSON -> Widgets
├── screens/
│   └── sdui_screen.dart            # Main generic screen widget
└── main.dart                       # App entry point
```

## How We Built It

### Component Mapper
Uses Dart's pattern matching to map `ComponentModel` types to Flutter widgets:

```dart
Widget map(ComponentModel component, ActionHandler handler) {
  return switch (component) {
    TitleComponent(:final title) => Text(title, style: ...),
    ButtonComponent(:final label) => ElevatedButton(...),
    // ... handles all 8 component types
  };
}
```

### Dynamic Routing
The `main.dart` intercepts all routes and passes the route name to `SduiScreen`:

```dart
onGenerateRoute: (settings) {
  final screenName = settings.name?.replaceFirst('/', '') ?? 'home';
  return MaterialPageRoute(
    builder: (_) => SduiScreen(screenName: screenName),
  );
},
```

### Action Handling
Decoupled logic for handling side effects:

```dart
void execute(ActionModel action) {
  switch (action) {
    case NavigateAction(:final destination):
      Navigator.pushNamed(context, '/$destination');
    case ShowSnackbarAction(:final message):
      ScaffoldMessenger.of(context).showSnackBar(...);
    // ... handles all 5 action types
  }
}
```

## Why This Approach

| Decision | Reason |
|----------|--------|
| **Component Mapper** | Separates UI logic from data models. Easy to test independently. |
| **Action Handler** | Centralizes side effects. Keeps UI widgets pure and declarative. |
| **Generic Screen** | Reuse same widget for Home, Profile, etc. True SDUI. |
| **Provider** | Simples DI for `SduiApiService` to make it accessible anywhere. |

---

# ✅ PHASE 5: Integration & Testing (COMPLETED)

## What We Built

Comprehensive test suites for all three packages ensuring:
- Models serialize/deserialize correctly
- Server returns valid screen JSON
- Client widgets render components properly
- Actions trigger correct behaviors

### Test Coverage

| Package | Test File | Tests | Coverage |
|---------|-----------|-------|----------|
| `sdui_models` | `sdui_models_test.dart` | 40 | All action, component, and screen types |
| `sdui_server` | `server_test.dart` | 16 | All screen builders and JSON structure |
| `sdui_client` | `widget_test.dart` | 23 | Component mapper and action handler |

## How We Built It

### 1. Model Tests (`sdui_models/test/`)

Tests all model types for:
- **Creation**: Verify constructors with required and optional fields
- **Defaults**: Ensure default values are applied correctly
- **Serialization**: JSON round-trip (object → JSON → object)
- **Nested Structures**: Complex screens with nested components and actions

```dart
test('round-trip serialization preserves all nested data', () {
  const screen = ScreenModel.vertical(
    screenTitle: 'Complex Screen',
    components: [
      ComponentModel.horizontalList(items: [
        ComponentModel.card(title: 'Card', action: ActionModel.navigate(destination: 'detail')),
      ]),
    ],
  );
  
  final json = screen.toJson();
  final restored = ScreenModel.fromJson(jsonDecode(jsonEncode(json)));
  expect(restored, isA<VerticalScreenModel>());
});
```

### 2. Server Tests (`sdui_server/test/`)

Tests screen JSON structure for:
- **Screen Structure**: Correct runtimeType, screenTitle, components
- **Component Verification**: Navigation buttons, horizontal lists, info tiles
- **Action Types**: Navigate, GoBack, ShowSnackbar, OpenUrl present
- **JSON Round-trip**: Complete screens serialize and deserialize correctly

```dart
test('home screen has navigation buttons', () {
  const screen = ScreenModel.vertical(
    screenTitle: 'Home',
    components: [
      ComponentModel.button(
        label: 'Go to Profile',
        action: ActionModel.navigate(destination: 'profile'),
      ),
    ],
  );
  
  final buttons = (screen as VerticalScreenModel)
      .components.whereType<ButtonComponent>().toList();
  expect((buttons[0].action as NavigateAction).destination, 'profile');
});
```

### 3. Widget Tests (`sdui_client/test/`)

Tests Flutter widgets for:
- **Component Rendering**: Each component type renders correctly
- **Action Handling**: Navigate, GoBack, ShowSnackbar work
- **Conditional UI**: isPrimary, optional fields affect rendering
- **Integration**: Full screen with multiple components

```dart
testWidgets('NavigateAction navigates to new screen', (tester) async {
  // Tap navigate button
  await tester.tap(find.text('Navigate'));
  await tester.pumpAndSettle();
  // Verify navigation occurred
  expect(find.text('Test Screen'), findsOneWidget);
});
```

## Test Verification Matrix

| Action Type | Server | Client |
|-------------|--------|--------|
| `navigate` | ✅ Home buttons | ✅ Navigator.pushNamed |
| `goBack` | ✅ Profile/Settings | ✅ Navigator.pop |
| `showSnackbar` | ✅ Profile | ✅ ScaffoldMessenger |
| `openUrl` | ✅ Settings | ✅ url_launcher |
| `logEvent` | ✅ Serialization | ✅ debugPrint |

| Component Type | Server | Client |
|----------------|--------|--------|
| `title` | ✅ All screens | ✅ Text + style |
| `spacer` | ✅ All screens | ✅ SizedBox |
| `imageBanner` | ✅ Home | ✅ Image.network |
| `button` | ✅ All screens | ✅ Filled/Outlined |
| `card` | ✅ Home | ✅ Card + InkWell |
| `horizontalList` | ✅ Home | ✅ Horizontal ListView |
| `infoTile` | ✅ Profile/Settings | ✅ ListTile |
| `divider` | ✅ Settings | ✅ Divider |

## How to Run Tests

```bash
# Run model tests
cd sdui_models
dart test

# Run server tests (starts server automatically)
cd sdui_server
dart test

# Run client widget tests
cd sdui_client
flutter test
```

## End-to-End Flow Verified

1. **Server → JSON**: Server builds ScreenModel → serializes to JSON
2. **Network → Client**: Client fetches JSON via HTTP
3. **JSON → Model**: Client deserializes JSON to ScreenModel
4. **Model → Widgets**: ComponentMapper converts to Flutter widgets
5. **User → Action**: Button tap triggers ActionHandler
6. **Action → Effect**: Navigation, snackbar, URL launch work correctly

## Why This Approach

| Decision | Reason |
|----------|--------|
| **Unit Tests for Models** | Catch serialization issues early, fast feedback |
| **Integration Tests for Server** | Verify real HTTP responses match expectations |
| **Widget Tests for Client** | Test UI behavior without network dependency |
| **Pattern Matching Tests** | Ensure all switch cases are covered |
| **Round-trip Tests** | Simulate real network transfer (object→JSON string→object) |

---

# 🚀 Quick Start Commands

```bash
# Install dependencies
cd sdui_models && dart pub get && dart run build_runner build
cd ../sdui_server && dart pub get
cd ../sdui_client && flutter pub get

# Run server (Terminal 1)
cd sdui_server && dart run bin/server.dart

# Run client (Terminal 2)  
cd sdui_client && flutter run
```

---

*Last Updated: 2026-02-07*
