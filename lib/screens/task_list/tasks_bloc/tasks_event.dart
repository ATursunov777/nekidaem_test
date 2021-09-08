part of 'tasks_bloc.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const factory TasksEvent.initial({required String row}) = _InitialTaskEvent;
}