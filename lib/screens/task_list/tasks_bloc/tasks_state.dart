part of 'tasks_bloc.dart';

@freezed
class TasksState with _$TasksState {
  const factory TasksState.initial() = _InitialTasksState;
  const factory TasksState.loadInProgress() = _LoadInProgressTasksState;
  const factory TasksState.loadSuccess({required List<Cards> cardList}) = _LoadSuccessTasksState;
  const factory TasksState.loadFailure({required String? message}) = _LoadFailureTasksState;

}