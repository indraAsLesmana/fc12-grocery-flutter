# flutter_fic12_grocery_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## docker build for web
- docker build -t flutter-web .
- docker run -d -p 8080:80 --name flutter-web flutter-web

## rajaongkir key
put your rajaongkir api key

```dart
class VariablesPrivate {
  static const String _rajaOngkirStarterKey = 'PUT_YOUR_KEY';
  static const String _rajaOngkirProKey = 'PUT_YOUR_KEY';

  static String get rajaOngkierKey =>
      Variables.usingPro ? _rajaOngkirProKey : _rajaOngkirStarterKey;
}
