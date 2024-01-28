class Variables {
  static const String baseUrl = 'https://fc12.asianpower.store';

  //starter
  static const String _rajaOngkirStarterBaseUrl =
      'https://api.rajaongkir.com/starter';

  //pro
  static const String _rajaOngkirProBaseUrl = 'https://pro.rajaongkir.com/api';

  //configurable
  static const usingPro = true;

  static String get rajaOngkierBaseUrl =>
      usingPro ? _rajaOngkirProBaseUrl : _rajaOngkirStarterBaseUrl;
}
