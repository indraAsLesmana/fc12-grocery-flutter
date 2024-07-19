import 'package:flutter_fic12_grocery_app/core/constants/variables.dart';

// note: this key related to project
// https://github.com/indraAsLesmana/fc12-grocery-flutter

class VariablesPrivate {
  static const String _rajaOngkirStarterKey = 'PUT_YOUR_KEY';
  static const String _rajaOngkirProKey = 'PUT_YOUR_KEY';

  static String get rajaOngkierKey =>
      Variables.usingPro ? _rajaOngkirProKey : _rajaOngkirStarterKey;
}
