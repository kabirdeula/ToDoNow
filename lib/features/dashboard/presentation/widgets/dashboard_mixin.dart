import 'package:flutter/material.dart';

mixin DashboardMixin {
  Future<DateTime?> _pickDateTime(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime(2102),
      initialDate: DateTime.now(),
      confirmText: 'Choose Time',
    );

    if (pickedDate == null) return null;
    if (!context.mounted) return null;

    TimeOfDay? pickedTime = await showTimePicker(
        context: context, initialTime: TimeOfDay.now(), confirmText: "Save");

    if (pickedTime == null) return null;

    return DateTime(
      pickedDate.year,
      pickedDate.month,
      pickedDate.day,
      pickedTime.hour,
      pickedTime.minute,
    );
  }
}
