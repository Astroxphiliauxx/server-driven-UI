# Server-Driven UI Demo

This project demonstrates a Server-Driven UI (SDUI) implementation using Flutter and Dart. The server sends JSON describing the UI, and the Flutter client renders it dynamically.

## 🚀 How to Run

### 1. Start the Server
Open a terminal in the `sdui_server` directory and run:

```bash
cd sdui_server
dart run bin/server.dart
```

Take note of the server address (e.g., `http://localhost:8080`).

### 2. Run the Flutter App
Open a **new** terminal in the `sdui_client` directory and run:

```bash
cd sdui_client
flutter run
```

---

## 🛠️ Setup Steps

If you are setting this up for the first time:

1.  **Dependencies**: Run `dart pub get` or `flutter pub get` in each directory:
    ```bash
    cd sdui_models && dart pub get
    cd ../sdui_server && dart pub get
    cd ../sdui_client && flutter pub get
    ```

2.  **Code Generation**: If you modify models in `sdui_models`, re-run build_runner:
    ```bash
    cd sdui_models
    dart run build_runner build --delete-conflicting-outputs
    ```

---
