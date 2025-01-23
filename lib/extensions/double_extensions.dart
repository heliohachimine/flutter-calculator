import 'package:intl/intl.dart';

extension DoubleExtensions on double {
  String formatBr() {
    final value = double.parse(toStringAsFixed(15));
    final formatter = NumberFormat("#,##0.#######", "pt_BR");
    return formatter.format(value);
  }
}
