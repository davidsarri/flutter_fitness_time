import 'package:intl/intl.dart';

class DateController {
  static String formatDateTimeActivities(DateTime dateTime) {
    final now = DateTime.now();
    if (dateTime.year == now.year &&
        dateTime.month == now.month &&
        dateTime.day == now.day - 1) {
      return "ahir, ${DateFormat.Hm().format(dateTime)}";
    } else {
      return DateFormat('d MMM yyyy, HH:mm').format(dateTime);
    }
  }

  static String formatRegistrationDate(DateTime dateTime) {
    final DateFormat formatter =
        DateFormat(' d \'de\' MMMM \'del\' yyyy', 'ca');
    return 'des del ${formatter.format(dateTime)}';
  }
}
