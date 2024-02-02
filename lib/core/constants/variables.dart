class Variables {
  //starter
  static const String _rajaOngkirStarterBaseUrl =
      'https://api.rajaongkir.com/starter';

  //pro
  static const String _rajaOngkirProBaseUrl = 'https://pro.rajaongkir.com/api';

  //configurable
  static const usingPro = true;
  static const _envConfig = Environment.localFly;

  static String get rajaOngkierBaseUrl =>
      usingPro ? _rajaOngkirProBaseUrl : _rajaOngkirStarterBaseUrl;

  static String get baseUrl {
    switch (_envConfig) {
      case Environment.local:
        return 'http://localhost:8000';
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
