import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_now/core/di/di.dart';
import 'package:to_do_now/features/task/task.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskState.initial());

  void addTask(TaskModel task) async {
    await sl<TaskUsecase>().call(task: task);
  }
}
