[English](README.md) | [فارسی](README.fa.md)

# Signal VIP

A Persian-language Flutter UI prototype for browsing cryptocurrency news and sample trading signals.

![Flutter](https://img.shields.io/badge/Flutter-SDK-02569B?logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-%5E3.12.0-0175C2?logo=dart&logoColor=white)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

The app starts with a welcome screen and opens a feed of signal cards with chart images and sample buy/sell prices. The interface uses Persian copy and the bundled Vazir font. It is a small UI project, not a working trading service or an authenticated client.

## Screenshots

| Welcome screen | Signal feed | Signal feed, continued |
| :---: | :---: | :---: |
| <img src="assets/screenshots/welcome-screen.png" alt="Persian welcome screen with login, registration, and password recovery buttons" width="200"/> | <img src="assets/screenshots/home-screen%281%29.png" alt="Sample SafeMoon and ACH signal cards" width="200"/> | <img src="assets/screenshots/home-screen%282%29.png" alt="Sample ATOM and XRP signal cards" width="200"/> |

These existing captures are stored in `assets/screenshots/`. The parentheses in the feed image filenames are URL-encoded in the gallery links; the original filenames are unchanged. These images are documentation assets and do not need to be added to Flutter's asset bundle.

## Key features

- Persian welcome screen with an illustration and login, registration, and password recovery buttons.
- Scrollable feed with four sample signals: SafeMoon, Alchemy Pay (ACH), Cosmos (ATOM), and Ripple (XRP).
- Reusable signal-card renderer with a local chart image, a title, green buy prices, red sell prices, and a divider.
- Screen navigation using Flutter's `Navigator` and `MaterialPageRoute`.
- Back navigation and an exit button that returns to the previous screen.
- Bundled Vazir typography and local image assets, with no remote data requests in the current implementation.

### What is not implemented yet

Both the login and registration buttons open the same feed directly. There are no credential fields, account creation, authentication checks, or stored sessions. The password recovery page currently displays only a label, and the exit button pops the route rather than signing out of a backend.

Signal titles, dates, and prices are hard-coded in `blog_page.dart`. The charts are image files, not live or interactive charts. There is no market-data API, networking layer, local storage, or trade execution. The displayed values are demo content, not current market prices or investment advice.

The UI uses Persian text, but app-wide RTL direction and localization are not explicitly configured yet.

## Tech stack

- **Flutter SDK:** Material widgets, layout, navigation, and theming.
- **Dart:** SDK constraint `^3.12.0`, equivalent to `>=3.12.0 <4.0.0`.
- **`cupertino_icons: ^1.0.8`:** Cupertino icon package declared in `pubspec.yaml`; the current screens use Material icons.
- **`flutter_lints: ^6.0.0`:** Recommended lint rules, enabled through `analysis_options.yaml`.
- **`flutter_test` (SDK):** Test tooling declared as a development dependency. No `test/` directory is included yet.
- **Vazir:** Local font registered as `vazir` and applied through the app theme.

The package name is `signal_vip`, the app version is `1.0.0+1`, and publishing to pub.dev is disabled with `publish_to: 'none'`. The manifest description is still the Flutter template text, `A new Flutter project.`

There is no third-party State Management, networking, persistence, or code generation package. Android and web are the only platform directories currently included in the repository.

## Architecture

The project uses a flat, screen-based structure with a shared UI helper. It is not organized as Clean Architecture, MVVM, or a feature-first application.

```text
lib/
├── main.dart                   # App entry point, theme, and initial screen
├── login_page.dart             # Welcome screen and navigation callbacks
├── blog_page.dart              # Signal feed and hard-coded sample content
├── password_recovery.dart      # Placeholder password recovery screen
└── custom_widgets/
    └── post_widget.dart        # getBlogPost() signal-card renderer

assets/
├── fonts/                      # Bundled Vazir font
├── images/                     # Welcome illustration and chart images
└── screenshots/                # README gallery captures
```

`Application`, `LoginPage`, `BlogScreen`, and `PasswordRecovery` are `StatelessWidget` classes. The feed constructs its sample cards directly, and `getBlogPost()` returns the shared card layout. There are no models, repositories, services, BLoC/Provider/Riverpod stores, or mutable application state. Navigation is handled with `Navigator.push` and `Navigator.pop`.

## Getting started

### 1. Prepare the toolchain

Install Flutter with a bundled Dart SDK that satisfies `>=3.12.0 <4.0.0`, and add Flutter to your `PATH`. For Android, install Android Studio, the Android SDK, and an emulator, or connect a device with USB debugging enabled. The Android build configuration targets Java/Kotlin 17; use a compatible JDK as required by the included Gradle/Android tooling. For web, have Chrome installed.

Check your setup and SDK versions:

```bash
flutter --version
flutter doctor
```

Resolve any toolchain issues for your chosen target before running the app.

### 2. Clone the repository

```bash
git clone https://github.com/mehrshadkhv/Signal-vip.git
cd Signal-vip
```

If you already have a checkout, open a terminal in the directory containing `pubspec.yaml` instead.

### 3. Install dependencies

```bash
flutter pub get
```

No `build_runner` or other generator is declared, so there is no code generation step. The image and font assets are already configured in `pubspec.yaml`.

### 4. Run the app

Start an Android emulator or connect your device, then list the available targets and launch:

```bash
flutter devices
flutter run
```

If more than one target is available, select the Android device explicitly:

```bash
flutter run -d <device-id>
```

Replace `<device-id>` with an ID from `flutter devices`; do not type the angle brackets. To use the included web target:

```bash
flutter run -d chrome
```

### 5. Check the code

```bash
flutter analyze
```

There are no automated tests in the repository yet, although `flutter_test` is available for adding them.

## License

Released under the [MIT License](LICENSE). Copyright © 2026 Mehrshad Khodavirdizadeh.
