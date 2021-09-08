// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TasksStateTearOff {
  const _$TasksStateTearOff();

  _InitialTasksState initial() {
    return const _InitialTasksState();
  }

  _LoadInProgressTasksState loadInProgress() {
    return const _LoadInProgressTasksState();
  }

  _LoadSuccessTasksState loadSuccess({required List<Cards> cardList}) {
    return _LoadSuccessTasksState(
      cardList: cardList,
    );
  }

  _LoadFailureTasksState loadFailure({required String? message}) {
    return _LoadFailureTasksState(
      message: message,
    );
  }
}

/// @nodoc
const $TasksState = _$TasksStateTearOff();

/// @nodoc
mixin _$TasksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Cards> cardList) loadSuccess,
    required TResult Function(String? message) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Cards> cardList)? loadSuccess,
    TResult Function(String? message)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialTasksState value) initial,
    required TResult Function(_LoadInProgressTasksState value) loadInProgress,
    required TResult Function(_LoadSuccessTasksState value) loadSuccess,
    required TResult Function(_LoadFailureTasksState value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialTasksState value)? initial,
    TResult Function(_LoadInProgressTasksState value)? loadInProgress,
    TResult Function(_LoadSuccessTasksState value)? loadSuccess,
    TResult Function(_LoadFailureTasksState value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res> implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  final TasksState _value;
  // ignore: unused_field
  final $Res Function(TasksState) _then;
}

/// @nodoc
abstract class _$InitialTasksStateCopyWith<$Res> {
  factory _$InitialTasksStateCopyWith(
          _InitialTasksState value, $Res Function(_InitialTasksState) then) =
      __$InitialTasksStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialTasksStateCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res>
    implements _$InitialTasksStateCopyWith<$Res> {
  __$InitialTasksStateCopyWithImpl(
      _InitialTasksState _value, $Res Function(_InitialTasksState) _then)
      : super(_value, (v) => _then(v as _InitialTasksState));

  @override
  _InitialTasksState get _value => super._value as _InitialTasksState;
}

/// @nodoc

class _$_InitialTasksState implements _InitialTasksState {
  const _$_InitialTasksState();

  @override
  String toString() {
    return 'TasksState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialTasksState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Cards> cardList) loadSuccess,
    required TResult Function(String? message) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Cards> cardList)? loadSuccess,
    TResult Function(String? message)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialTasksState value) initial,
    required TResult Function(_LoadInProgressTasksState value) loadInProgress,
    required TResult Function(_LoadSuccessTasksState value) loadSuccess,
    required TResult Function(_LoadFailureTasksState value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialTasksState value)? initial,
    TResult Function(_LoadInProgressTasksState value)? loadInProgress,
    TResult Function(_LoadSuccessTasksState value)? loadSuccess,
    TResult Function(_LoadFailureTasksState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialTasksState implements TasksState {
  const factory _InitialTasksState() = _$_InitialTasksState;
}

/// @nodoc
abstract class _$LoadInProgressTasksStateCopyWith<$Res> {
  factory _$LoadInProgressTasksStateCopyWith(_LoadInProgressTasksState value,
          $Res Function(_LoadInProgressTasksState) then) =
      __$LoadInProgressTasksStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressTasksStateCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res>
    implements _$LoadInProgressTasksStateCopyWith<$Res> {
  __$LoadInProgressTasksStateCopyWithImpl(_LoadInProgressTasksState _value,
      $Res Function(_LoadInProgressTasksState) _then)
      : super(_value, (v) => _then(v as _LoadInProgressTasksState));

  @override
  _LoadInProgressTasksState get _value =>
      super._value as _LoadInProgressTasksState;
}

/// @nodoc

class _$_LoadInProgressTasksState implements _LoadInProgressTasksState {
  const _$_LoadInProgressTasksState();

  @override
  String toString() {
    return 'TasksState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgressTasksState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Cards> cardList) loadSuccess,
    required TResult Function(String? message) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Cards> cardList)? loadSuccess,
    TResult Function(String? message)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialTasksState value) initial,
    required TResult Function(_LoadInProgressTasksState value) loadInProgress,
    required TResult Function(_LoadSuccessTasksState value) loadSuccess,
    required TResult Function(_LoadFailureTasksState value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialTasksState value)? initial,
    TResult Function(_LoadInProgressTasksState value)? loadInProgress,
    TResult Function(_LoadSuccessTasksState value)? loadSuccess,
    TResult Function(_LoadFailureTasksState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgressTasksState implements TasksState {
  const factory _LoadInProgressTasksState() = _$_LoadInProgressTasksState;
}

/// @nodoc
abstract class _$LoadSuccessTasksStateCopyWith<$Res> {
  factory _$LoadSuccessTasksStateCopyWith(_LoadSuccessTasksState value,
          $Res Function(_LoadSuccessTasksState) then) =
      __$LoadSuccessTasksStateCopyWithImpl<$Res>;
  $Res call({List<Cards> cardList});
}

/// @nodoc
class __$LoadSuccessTasksStateCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res>
    implements _$LoadSuccessTasksStateCopyWith<$Res> {
  __$LoadSuccessTasksStateCopyWithImpl(_LoadSuccessTasksState _value,
      $Res Function(_LoadSuccessTasksState) _then)
      : super(_value, (v) => _then(v as _LoadSuccessTasksState));

  @override
  _LoadSuccessTasksState get _value => super._value as _LoadSuccessTasksState;

  @override
  $Res call({
    Object? cardList = freezed,
  }) {
    return _then(_LoadSuccessTasksState(
      cardList: cardList == freezed
          ? _value.cardList
          : cardList // ignore: cast_nullable_to_non_nullable
              as List<Cards>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccessTasksState implements _LoadSuccessTasksState {
  const _$_LoadSuccessTasksState({required this.cardList});

  @override
  final List<Cards> cardList;

  @override
  String toString() {
    return 'TasksState.loadSuccess(cardList: $cardList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccessTasksState &&
            (identical(other.cardList, cardList) ||
                const DeepCollectionEquality()
                    .equals(other.cardList, cardList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cardList);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessTasksStateCopyWith<_LoadSuccessTasksState> get copyWith =>
      __$LoadSuccessTasksStateCopyWithImpl<_LoadSuccessTasksState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Cards> cardList) loadSuccess,
    required TResult Function(String? message) loadFailure,
  }) {
    return loadSuccess(cardList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Cards> cardList)? loadSuccess,
    TResult Function(String? message)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(cardList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialTasksState value) initial,
    required TResult Function(_LoadInProgressTasksState value) loadInProgress,
    required TResult Function(_LoadSuccessTasksState value) loadSuccess,
    required TResult Function(_LoadFailureTasksState value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialTasksState value)? initial,
    TResult Function(_LoadInProgressTasksState value)? loadInProgress,
    TResult Function(_LoadSuccessTasksState value)? loadSuccess,
    TResult Function(_LoadFailureTasksState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccessTasksState implements TasksState {
  const factory _LoadSuccessTasksState({required List<Cards> cardList}) =
      _$_LoadSuccessTasksState;

  List<Cards> get cardList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessTasksStateCopyWith<_LoadSuccessTasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureTasksStateCopyWith<$Res> {
  factory _$LoadFailureTasksStateCopyWith(_LoadFailureTasksState value,
          $Res Function(_LoadFailureTasksState) then) =
      __$LoadFailureTasksStateCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$LoadFailureTasksStateCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res>
    implements _$LoadFailureTasksStateCopyWith<$Res> {
  __$LoadFailureTasksStateCopyWithImpl(_LoadFailureTasksState _value,
      $Res Function(_LoadFailureTasksState) _then)
      : super(_value, (v) => _then(v as _LoadFailureTasksState));

  @override
  _LoadFailureTasksState get _value => super._value as _LoadFailureTasksState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_LoadFailureTasksState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoadFailureTasksState implements _LoadFailureTasksState {
  const _$_LoadFailureTasksState({required this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'TasksState.loadFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailureTasksState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureTasksStateCopyWith<_LoadFailureTasksState> get copyWith =>
      __$LoadFailureTasksStateCopyWithImpl<_LoadFailureTasksState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Cards> cardList) loadSuccess,
    required TResult Function(String? message) loadFailure,
  }) {
    return loadFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Cards> cardList)? loadSuccess,
    TResult Function(String? message)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialTasksState value) initial,
    required TResult Function(_LoadInProgressTasksState value) loadInProgress,
    required TResult Function(_LoadSuccessTasksState value) loadSuccess,
    required TResult Function(_LoadFailureTasksState value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialTasksState value)? initial,
    TResult Function(_LoadInProgressTasksState value)? loadInProgress,
    TResult Function(_LoadSuccessTasksState value)? loadSuccess,
    TResult Function(_LoadFailureTasksState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailureTasksState implements TasksState {
  const factory _LoadFailureTasksState({required String? message}) =
      _$_LoadFailureTasksState;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureTasksStateCopyWith<_LoadFailureTasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TasksEventTearOff {
  const _$TasksEventTearOff();

  _InitialTaskEvent initial({required String row}) {
    return _InitialTaskEvent(
      row: row,
    );
  }
}

/// @nodoc
const $TasksEvent = _$TasksEventTearOff();

/// @nodoc
mixin _$TasksEvent {
  String get row => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String row) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String row)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialTaskEvent value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialTaskEvent value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasksEventCopyWith<TasksEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksEventCopyWith<$Res> {
  factory $TasksEventCopyWith(
          TasksEvent value, $Res Function(TasksEvent) then) =
      _$TasksEventCopyWithImpl<$Res>;
  $Res call({String row});
}

/// @nodoc
class _$TasksEventCopyWithImpl<$Res> implements $TasksEventCopyWith<$Res> {
  _$TasksEventCopyWithImpl(this._value, this._then);

  final TasksEvent _value;
  // ignore: unused_field
  final $Res Function(TasksEvent) _then;

  @override
  $Res call({
    Object? row = freezed,
  }) {
    return _then(_value.copyWith(
      row: row == freezed
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InitialTaskEventCopyWith<$Res>
    implements $TasksEventCopyWith<$Res> {
  factory _$InitialTaskEventCopyWith(
          _InitialTaskEvent value, $Res Function(_InitialTaskEvent) then) =
      __$InitialTaskEventCopyWithImpl<$Res>;
  @override
  $Res call({String row});
}

/// @nodoc
class __$InitialTaskEventCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res>
    implements _$InitialTaskEventCopyWith<$Res> {
  __$InitialTaskEventCopyWithImpl(
      _InitialTaskEvent _value, $Res Function(_InitialTaskEvent) _then)
      : super(_value, (v) => _then(v as _InitialTaskEvent));

  @override
  _InitialTaskEvent get _value => super._value as _InitialTaskEvent;

  @override
  $Res call({
    Object? row = freezed,
  }) {
    return _then(_InitialTaskEvent(
      row: row == freezed
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitialTaskEvent implements _InitialTaskEvent {
  const _$_InitialTaskEvent({required this.row});

  @override
  final String row;

  @override
  String toString() {
    return 'TasksEvent.initial(row: $row)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialTaskEvent &&
            (identical(other.row, row) ||
                const DeepCollectionEquality().equals(other.row, row)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(row);

  @JsonKey(ignore: true)
  @override
  _$InitialTaskEventCopyWith<_InitialTaskEvent> get copyWith =>
      __$InitialTaskEventCopyWithImpl<_InitialTaskEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String row) initial,
  }) {
    return initial(row);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String row)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(row);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialTaskEvent value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialTaskEvent value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialTaskEvent implements TasksEvent {
  const factory _InitialTaskEvent({required String row}) = _$_InitialTaskEvent;

  @override
  String get row => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialTaskEventCopyWith<_InitialTaskEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
