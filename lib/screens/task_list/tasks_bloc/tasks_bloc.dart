import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nekidaem_test/data/repository/repository.dart';
import 'package:nekidaem_test/data/server_api/models/card_model.dart';

part 'tasks_state.dart';
part 'tasks_event.dart';
part 'tasks_bloc.freezed.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  final _repository = Repository();
  late List<Cards> _cardsList;
  TasksBloc() : super(TasksState.initial());

  @override
  Stream<TasksState> mapEventToState(TasksEvent event) async* {
    yield* event.map(
      initial: _mapInitailEvent,
    );
  }

  Stream<TasksState> _mapInitailEvent(_InitialTaskEvent event) async* {
    yield TasksState.loadInProgress();
    try {
      _cardsList = await _repository.getCards(event.row);
      yield TasksState.loadSuccess(cardList: _cardsList);
    } catch (e) {
      yield TasksState.loadFailure(message: e.toString());
    }
  }
}
