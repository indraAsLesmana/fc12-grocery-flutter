import 'package:chuck_interceptor/chuck.dart';

class ChuckInterceptor {
  static final ChuckInterceptor _singleton = ChuckInterceptor._internal();
  late Chuck _chuck;

  factory ChuckInterceptor() {
    return _singleton;
  }

  ChuckInterceptor._internal() {
    _chuck = Chuck(
      showNotification: true,
      showInspectorOnShake: true,
      maxCallsCount: 1000,
    );
  }

  Chuck get intercept => _chuck;
}
