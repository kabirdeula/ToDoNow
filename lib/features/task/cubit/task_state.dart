part of 'task_cubit.dart';

class TaskState extends Equatable {
  final bool isLoading;

  const TaskState({
    this.isLoading = false,
  });

  factory TaskState.initial() => const TaskState();

  TaskState copyWith({bool? isLoading}) {
    return TaskState(isLoading: isLoading ?? this.isLoading);
  }

  @override
  List<Object?> get props => [isLoading];
}
