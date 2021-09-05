import 'package:intl/intl.dart';

class DateConverter {
  static DateTime? getDateFrom({String? date, required String? formatter}) {
    if (date == null) {
      return null;
    }
    try {
      //Format : 2021-06-18T10:07:25Z
      final inputFormatter = DateFormat(formatter);
      final DateTime dateTime = inputFormatter.parse(date);
      return dateTime;
    } catch (e) {
      return null;
    }
  }

  static String convertDateToString(
      {DateTime? date, required String formatter}) {
    if (date == null) {
      return "";
    }
    try {
      final inputFormatter = DateFormat(formatter);
      final String dateTime = inputFormatter.format(date);
      return dateTime;
    } catch (e) {
      return "";
    }
  }

  static bool isDateTimeExpired({DateTime? dateTime}) {
    if (dateTime == null) {
      return true;
    }

    try {
      final now = DateTime.now();

      final int diff = DateTime(now.year, now.month, now.day)
          .difference(DateTime(dateTime.year, dateTime.month, dateTime.day))
          .inDays;

      if (diff >= 1) {
        return true;
      } else {
        return false;
      }
    } catch (_) {
      return true;
    }
  }
}
