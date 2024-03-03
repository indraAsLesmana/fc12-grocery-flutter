import 'dart:io';

import 'package:flutter/foundation.dart';

class Variables {
  //starter
  static const String _rajaOngkirStarterBaseUrl =
      'https://api.rajaongkir.com/starter';

  //pro
  static const String _rajaOngkirProBaseUrl = 'https://pro.rajaongkir.com/api';

  //configurable
  static const usingPro = false;
  static const _envConfig = Environment.staging;

  static String get rajaOngkierBaseUrl =>
      usingPro ? _rajaOngkirProBaseUrl : _rajaOngkirStarterBaseUrl;

  static String get baseUrl {
    switch (_envConfig) {
      case Environment.local:
        return (Platform.isAndroid || kIsWeb)
            ? 'http://192.168.2.195:8000' // web and android using manual IP
            : 'http://127.0.0.1:8000'; //running on iOS end web only
      // return 'http://127.0.0.1:8000';
      case Environment.staging:
        return "https://fc12.asianpower.store";
      case Environment.localFly:
        return "http://laravel-fc12.local";
    }
  }
}

enum Environment {
  local,
  staging,
  localFly,
}
