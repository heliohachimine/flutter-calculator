import 'package:intl/intl.dart';

extension DoubleExtensions on double {
  String formatBr() {
    final formatter = NumberFormat("#,##0.##", "pt_BR");
    return formatter.format(this);
  }
}