import 'package:intl/intl.dart';

extension IntegerExt on int {
  String get currencyFormatRp => NumberFormat.currency(
        locale: 'id',
        symbol: 'IDR ',
        decimalDigits: 0,
      ).format(this);
}
