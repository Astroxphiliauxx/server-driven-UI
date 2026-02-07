# 🎯 Server-Driven UI (SDUI) Implementation Guide

This document tracks the SDUI assignment implementation. Each phase documents **what** was built, **how** it works, and **why** we chose this approach.

---

## ✅ Progress Tracker

| Phase | Status | Description |
|-------|--------|-------------|
| **Phase 1** | ✅ Complete | Project Setup |
| **Phase 2** | ✅ Complete | Shared Models Layer |
| **Phase 3** | ✅ Complete | Server Implementation |
| **Phase 4** | ⏳ Pending | Client Implementation |
| **Phase 5** | ⏳ Pending | Integration & Testing |

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

# ⏳ PHASE 4: Client Implementation (PENDING)

## What We'll Build
- API service to fetch screens
- Component mapper (model → widget)
- Action handler (executes navigation, snackbars, etc.)
- Generic SDUIScreen widget

---

# ⏳ PHASE 5: Integration & Testing (PENDING)

## What We'll Build
- Connect client to server
- Test all navigation flows
- Verify all action types work

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
