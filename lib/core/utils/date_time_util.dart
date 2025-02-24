import 'package:intl/intl.dart';

String formatDateTime(DateTime dateTime) {
  DateTime now = DateTime.now();
  DateTime today = DateTime(now.year, now.month, now.day);
  DateTime tomorrow = today.add(Duration(days: 1));
  DateTime yesterday = today.subtract(Duration(days: 1));

  if (dateTime.year == today.year &&
      dateTime.month == today.month &&
      dateTime.day == today.day) {
    return "Today at ${DateFormat('h:mm a').format(dateTime)}";
  } else if (dateTime.year == tomorrow.year &&
      dateTime.month == tomorrow.month &&
      dateTime.day == tomorrow.day) {
    return "Tomorrow at ${DateFormat('h:mm a').format(dateTime)}";
  } else if (dateTime.year == yesterday.year) {
    return "Yesterday at ${DateFormat('h:mm a').format(dateTime)}";
  } else {
    return DateFormat('EEE, MMM d • hh:mm a').format(dateTime);
  }
}
