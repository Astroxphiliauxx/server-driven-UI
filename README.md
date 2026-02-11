<div align="center">

# Server-Driven UI

**A complete Server-Driven UI (SDUI) implementation using Flutter & Dart**

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart)](https://dart.dev)
[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter)](https://flutter.dev)
[![Shelf](https://img.shields.io/badge/Server-Shelf-lightgrey)](https://pub.dev/packages/shelf)

*Build dynamic, remotely configurable UIs: the server describes it, the client renders it.*

</div>

---

## Overview

**Server-Driven UI** is a pattern where the **server** sends a JSON payload describing the entire screen layout, components, and actions and the **client** (Flutter app) dynamically renders the UI from that payload. This means you can change what users see **without shipping a new app update**.

This project is a fully working reference implementation with three packages:

| Package | Description |
|---|---|
| **`sdui_models`** | Shared Dart models (screens, components, actions) — used by both server & client |
| **`sdui_server`** | Dart Shelf HTTP server that serves screen JSON payloads |
| **`sdui_client`** | Flutter app that fetches and renders screens dynamically |

---

## Features

- **Dynamic UI rendering** : screens are defined as JSON on the server
-  **8 built-in component types** : Title, Spacer, ImageBanner, Button, Card, HorizontalList, InfoTile, Divider
-  **5 action types** : Navigate, GoBack, ShowSnackbar, OpenUrl, LogEvent
-  **Type-safe models** with [Freezed](https://pub.dev/packages/freezed) union types & JSON serialization
-  **Multi-platform Flutter client** : Android, iOS, Web, Windows, Linux, macOS
-  **Docker support** for the server
-  **Comprehensive tests** for both models and server (AI generated: khudse likhna was tooo time taking)
- **CORS enabled** : works seamlessly with web clients

---

## Architecture

```
┌─────────────────┐       JSON        ┌─────────────────┐
│                 │  ◄──────────────   │                 │
│   sdui_client   │   GET/POST        │   sdui_server   │
│   (Flutter)     │   /screens/:name  │   (Dart Shelf)  │
│                 │  ──────────────►   │                 │
└────────┬────────┘                   └────────┬────────┘
         │                                     │
         │            ┌───────────┐            │
         └────────────┤sdui_models├────────────┘
                      │ (shared)  │
                      └───────────┘
```

### Data Flow

1. **Client** requests a screen: `POST /screens/home`
2. **Server** builds the screen model and returns JSON
3. **Client** deserializes JSON → `ScreenModel` → renders Flutter widgets via `ComponentMapper`

---

## Component Types

| Component | Description | Properties |
|---|---|---|
| `title` | Heading text with optional subtitle | `title`, `subtitle?` |
| `spacer` | Vertical spacing | `height` (default: 16) |
| `imageBanner` | Full-width image | `imageUrl`, `height` (default: 200) |
| `button` | Tappable button with action | `label`, `action`, `isPrimary` |
| `card` | Material card | `title`, `subtitle?`, `imageUrl?`, `action?` |
| `horizontalList` | Horizontal scrollable list | `items[]`, `height` |
| `infoTile` | List tile with icon/avatar | `title`, `subtitle?`, `avatarUrl?`, `leadingIcon?`, `action?` |
| `divider` | Horizontal line separator | `thickness` (default: 1) |

## Action Types

| Action | Description | Properties |
|---|---|---|
| `navigate` | Navigate to another screen | `destination` |
| `goBack` | Pop the current screen | — |
| `showSnackbar` | Display a snackbar message | `message` |
| `openUrl` | Open URL in browser | `url` |
| `logEvent` | Log an analytics event | `eventName`, `params?` |

---

## Getting Started

### Prerequisites

- [Dart SDK](https://dart.dev/get-dart) (3.x+)
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (3.x+)


### Installation

```bash
# Clone the repo
git clone https://github.com/Astroxphiliauxx/server-driven-UI.git
cd server-driven-UI

# Install dependencies for all packages
cd sdui_models && dart pub get
cd ../sdui_server && dart pub get
cd ../sdui_client && flutter pub get
```

### Running

#### 1. Start the Server

```bash
cd sdui_server
dart run bin/server.dart
# Server listening on port 8080
```

#### 2. Run the Flutter App

```bash
cd sdui_client
flutter run
```

> **Android Emulator?** Change `baseUrl` in `sdui_client/lib/main.dart` to `http://10.0.2.2:8080`.

---



Test it:

```bash
curl http://localhost:8080/screens/home
```

---

## Running Tests

```bash
# Model tests
cd sdui_models && dart test

# Server tests
cd sdui_server && dart test
```

---

## Code Generation

If you modify any Freezed models in `sdui_models`, regenerate the serialization code:

```bash
cd sdui_models
dart run build_runner build --delete-conflicting-outputs
```

---

## API Reference

| Method | Endpoint | Description |
|---|---|---|
| `GET` | `/screens/<screenName>` | Fetch a screen (browser-friendly) |
| `POST` | `/screens/<screenName>` | Fetch a screen (app client) |

### Available Screens

| Screen | Description |
|---|---|
| `home` | Welcome page with cards, image banner, horizontal list |
| `profile` | User profile with avatar, info tiles |
| `settings` | App settings with notification/privacy/about tiles |

### Example Response

```json
{
  "runtimeType": "vertical",
  "screenTitle": "Home",
  "components": [
    {
      "runtimeType": "title",
      "title": "Welcome to SDUI App"
    },
    {
      "runtimeType": "imageBanner",
      "imageUrl": "https://picsum.photos/seed/sdui/400/200",
      "height": 200
    },
    {
      "runtimeType": "button",
      "label": "View Profile",
      "action": {
        "runtimeType": "navigate",
        "destination": "profile"
      },
      "isPrimary": true
    }
  ]
}
```

---

## Project Structure

```
server-driven-UI/
├── sdui_models/              # Shared data models (Dart package)
│   └── lib/src/models/
│       ├── action_model.dart       # Action union types (Navigate, GoBack, etc.)
│       ├── component_model.dart    # Component union types (Title, Card, etc.)
│       └── screen_model.dart       # Screen union types (Vertical, Error)
│
├── sdui_server/              # Backend HTTP server (Dart Shelf)
│   ├── bin/server.dart             # Entry point, routes, CORS
│   ├── lib/screens/                # Screen builder functions
│   │   ├── home_screen.dart
│   │   ├── profile_screen.dart
│   │   └── settings_screen.dart
│   └── Dockerfile
│
└── sdui_client/              # Flutter mobile/web/desktop app
    └── lib/
        ├── main.dart                        # App entry, routing, API provider
        ├── core/
        │   ├── api/sdui_api_service.dart     # HTTP client for fetching screens
        │   ├── handlers/action_handler.dart  # Executes actions (navigate, snackbar, etc.)
        │   └── mappers/component_mapper.dart # Maps ComponentModel → Flutter Widget
        └── screens/
            └── sdui_screen.dart             # Generic screen that renders any ScreenModel
```

---

## Contributing

Contributions are welcome! Here's how:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/amazing-component`)
3. **Commit** your changes (`git commit -m 'Add AmazingComponent'`)
4. **Push** to the branch (`git push origin feature/amazing-component`)
5. **Open** a Pull Request


---

## License

This project is licensed under the **Apache License 2.0** — see the [LICENSE](LICENSE) file for details.

---

<div align="center">

**Built with ❤️ using Dart & Flutter**

[⭐ Star this repo](https://github.com/Astroxphiliauxx/server-driven-UI) if you find it useful!

</div>
