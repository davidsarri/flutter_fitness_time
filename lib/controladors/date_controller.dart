import 'package:intl/intl.dart';

class DateController {
  static String formatDateTime(DateTime dateTime) {
    final now = DateTime.now();

    if (dateTime.year == now.year &&
        dateTime.month == now.month &&
        dateTime.day == now.day - 1) {
      return "ahir, ${DateFormat.Hm().format(dateTime)}";
    } else {
      return DateFormat('d MMM yyyy, HH:mm').format(dateTime);
    }
  }
}
