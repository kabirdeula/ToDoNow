import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:to_do_now/core/constants/constants.dart';
import 'package:to_do_now/core/themes/themes.dart';
import 'package:to_do_now/core/utils/utils.dart';
import 'package:to_do_now/core/widgets/widgets.dart';
import 'package:to_do_now/features/task/task.dart';
import 'package:to_do_now/routes/routes.dart';
import 'package:uuid/uuid.dart';

mixin DashboardMixin {
  final formKey = GlobalKey<FormBuilderState>();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  late final DateTime? _selectedDateTIme;

  void createTask(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.background,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: FormBuilder(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16.0,
              children: [
                Text("Add Task", style: AppTypography.headline2()),
                CustomTextFormField(
                  name: 'title',
                  controller: titleController,
                  fillColor: Colors.transparent,
                  hintText: "Title",
                  textCapitalization: TextCapitalization.sentences,
                ),
                CustomTextFormField(
                  name: 'description',
                  controller: descriptionController,
                  hintText: "Description",
                  fillColor: Colors.transparent,
                  textCapitalization: TextCapitalization.sentences,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      spacing: 24.0,
                      children: [
                        IconButton(
                          icon: Icon(Icons.timer_outlined),
                          onPressed: () async =>
                              _selectedDateTIme = await _pickDateTime(context),
                        ),
                        Icon(Icons.sell_outlined),
                        Icon(Icons.flag_outlined),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        var uuid = Uuid();
                        final task = TaskModel(
                          id: uuid.v4(),
                          title: titleController.text,
                          description: descriptionController.text,
                          dueDateTime: _selectedDateTIme,
                        );

                        log.d("(Dashboard) New Task: $task");

                        context.read<TaskCubit>().addTask(task);

                        titleController.clear();
                        descriptionController.clear();

                        context.pop();
                      },
                      icon: Icon(Icons.send_outlined),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

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
