part of 'task_cubit.dart';

class TaskState extends Equatable {
  final bool isLoading;
  final List<TaskModel> tasks;

  const TaskState({
    this.isLoading = false,
    this.tasks = const [],
  });

  factory TaskState.initial() => const TaskState();

  TaskState copyWith({bool? isLoading, List<TaskModel>? tasks}) {
    return TaskState(
      isLoading: isLoading ?? this.isLoading,
      tasks: tasks ?? this.tasks,
    );
  }

  @override
  List<Object?> get props => [isLoading, tasks];
}
