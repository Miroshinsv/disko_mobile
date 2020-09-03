import 'package:intl/intl.dart';

String getTomorrowName() {
  final _tomorrowNoon = new DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day + 1, 12);
  return DateFormat(DateFormat.WEEKDAY).format(_tomorrowNoon).toLowerCase();
}

String getTodayName() {
  final _tomorrowNoon = new DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day, 12);
  return DateFormat(DateFormat.WEEKDAY).format(_tomorrowNoon).toLowerCase();
}
