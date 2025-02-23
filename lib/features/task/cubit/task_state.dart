part of 'task_cubit.dart';

class TaskState extends Equatable {
  final bool isLoading;
  final List<TaskModel> tasks;
  final Set<String> selectedTasks;
  final bool isSelectionMode;

  const TaskState({
    this.isLoading = false,
    this.tasks = const [],
    this.selectedTasks = const {},
    this.isSelectionMode = false,
  });

  factory TaskState.initial() => const TaskState();

  TaskState copyWith({
    bool? isLoading,
    List<TaskModel>? tasks,
    Set<String>? selectedTasks,
    bool? isSelectionMode,
  }) {
    return TaskState(
      isLoading: isLoading ?? this.isLoading,
      tasks: tasks ?? this.tasks,
      selectedTasks: selectedTasks ?? this.selectedTasks,
      isSelectionMode: isSelectionMode ?? this.isSelectionMode,
    );
  }

  @override
  List<Object?> get props => [isLoading, tasks, selectedTasks, isSelectionMode];
}
