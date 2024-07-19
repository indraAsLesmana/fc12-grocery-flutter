import 'package:flutter_fic12_grocery_app/core/constants/variables.dart';

/// Class to handle private variables related to RajaOngkir API keys.
/// Contains static methods to retrieve the appropriate RajaOngkir API key based on the environment.
class VariablesPrivate {
  static const String _rajaOngkirStarterKey = 'PUT_YOUR_KEY';
  static const String _rajaOngkirProKey = 'PUT_YOUR_KEY';

  static String get rajaOngkierKey =>
      Variables.usingPro ? _rajaOngkirProKey : _rajaOngkirStarterKey;
}
