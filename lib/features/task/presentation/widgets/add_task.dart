import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/core.dart';
import '../../../../routes/routes.dart';
import '../../task.dart';

void addTask(BuildContext context) {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  showModalBottomSheet(
    context: context,
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
                textInputAction: TextInputAction.next,
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
                  // Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // spacing: 24.0,
                  // children: [
                  // IconButton(
                  // icon: Icon(Icons.timer_outlined),
                  // onPressed: () async {
                  // DateTime? pickedDateTime =
                  // await _pickDateTime(context);
                  // selectedDateTime = pickedDateTime ?? DateTime.now();
                  // },
                  // ),
                  // Icon(Icons.sell_outlined),
                  // Icon(Icons.flag_outlined),
                  // ],
                  // ),
                  IconButton(
                    onPressed: () {
                      var uuid = Uuid();
                      final task = TaskEntity(
                        id: uuid.v4(),
                        title: titleController.text,
                        subtitle: descriptionController.text,
                        createdAt: DateTime.now(),
                      );

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
