// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CounterEvent {
  bool get isDark => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDark) increment,
    required TResult Function(bool isDark) decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDark)? increment,
    TResult? Function(bool isDark)? decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDark)? increment,
    TResult Function(bool isDark)? decrement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncrementEvent value) increment,
    required TResult Function(DecrementEvent value) decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IncrementEvent value)? increment,
    TResult? Function(DecrementEvent value)? decrement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncrementEvent value)? increment,
    TResult Function(DecrementEvent value)? decrement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterEventCopyWith<CounterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterEventCopyWith<$Res> {
  factory $CounterEventCopyWith(
          CounterEvent value, $Res Function(CounterEvent) then) =
      _$CounterEventCopyWithImpl<$Res, CounterEvent>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class _$CounterEventCopyWithImpl<$Res, $Val extends CounterEvent>
    implements $CounterEventCopyWith<$Res> {
  _$CounterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_value.copyWith(
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IncrementEventImplCopyWith<$Res>
    implements $CounterEventCopyWith<$Res> {
  factory _$$IncrementEventImplCopyWith(_$IncrementEventImpl value,
          $Res Function(_$IncrementEventImpl) then) =
      __$$IncrementEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$IncrementEventImplCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res, _$IncrementEventImpl>
    implements _$$IncrementEventImplCopyWith<$Res> {
  __$$IncrementEventImplCopyWithImpl(
      _$IncrementEventImpl _value, $Res Function(_$IncrementEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$IncrementEventImpl(
      null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IncrementEventImpl implements IncrementEvent {
  const _$IncrementEventImpl(this.isDark);

  @override
  final bool isDark;

  @override
  String toString() {
    return 'CounterEvent.increment(isDark: $isDark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementEventImpl &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncrementEventImplCopyWith<_$IncrementEventImpl> get copyWith =>
      __$$IncrementEventImplCopyWithImpl<_$IncrementEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDark) increment,
    required TResult Function(bool isDark) decrement,
  }) {
    return increment(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDark)? increment,
    TResult? Function(bool isDark)? decrement,
  }) {
    return increment?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDark)? increment,
    TResult Function(bool isDark)? decrement,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncrementEvent value) increment,
    required TResult Function(DecrementEvent value) decrement,
  }) {
    return increment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IncrementEvent value)? increment,
    TResult? Function(DecrementEvent value)? decrement,
  }) {
    return increment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncrementEvent value)? increment,
    TResult Function(DecrementEvent value)? decrement,
    required TResult orElse(),
  }) {
    if (increment != null) {
      return increment(this);
    }
    return orElse();
  }
}

abstract class IncrementEvent implements CounterEvent {
  const factory IncrementEvent(final bool isDark) = _$IncrementEventImpl;

  @override
  bool get isDark;
  @override
  @JsonKey(ignore: true)
  _$$IncrementEventImplCopyWith<_$IncrementEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DecrementEventImplCopyWith<$Res>
    implements $CounterEventCopyWith<$Res> {
  factory _$$DecrementEventImplCopyWith(_$DecrementEventImpl value,
          $Res Function(_$DecrementEventImpl) then) =
      __$$DecrementEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$DecrementEventImplCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res, _$DecrementEventImpl>
    implements _$$DecrementEventImplCopyWith<$Res> {
  __$$DecrementEventImplCopyWithImpl(
      _$DecrementEventImpl _value, $Res Function(_$DecrementEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$DecrementEventImpl(
      null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DecrementEventImpl implements DecrementEvent {
  const _$DecrementEventImpl(this.isDark);

  @override
  final bool isDark;

  @override
  String toString() {
    return 'CounterEvent.decrement(isDark: $isDark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecrementEventImpl &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DecrementEventImplCopyWith<_$DecrementEventImpl> get copyWith =>
      __$$DecrementEventImplCopyWithImpl<_$DecrementEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDark) increment,
    required TResult Function(bool isDark) decrement,
  }) {
    return decrement(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDark)? increment,
    TResult? Function(bool isDark)? decrement,
  }) {
    return decrement?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDark)? increment,
    TResult Function(bool isDark)? decrement,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IncrementEvent value) increment,
    required TResult Function(DecrementEvent value) decrement,
  }) {
    return decrement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IncrementEvent value)? increment,
    TResult? Function(DecrementEvent value)? decrement,
  }) {
    return decrement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IncrementEvent value)? increment,
    TResult Function(DecrementEvent value)? decrement,
    required TResult orElse(),
  }) {
    if (decrement != null) {
      return decrement(this);
    }
    return orElse();
  }
}

abstract class DecrementEvent implements CounterEvent {
  const factory DecrementEvent(final bool isDark) = _$DecrementEventImpl;

  @override
  bool get isDark;
  @override
  @JsonKey(ignore: true)
  _$$DecrementEventImplCopyWith<_$DecrementEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CounterState {
  int get counter => throw _privateConstructorUsedError;
  bool get hiddenAdd => throw _privateConstructorUsedError;
  bool get hiddenSub => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int counter, bool hiddenAdd, bool hiddenSub)
        state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int counter, bool hiddenAdd, bool hiddenSub)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int counter, bool hiddenAdd, bool hiddenSub)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CounterStates value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CounterStates value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounterStates value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterStateCopyWith<CounterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res, CounterState>;
  @useResult
  $Res call({int counter, bool hiddenAdd, bool hiddenSub});
}

/// @nodoc
class _$CounterStateCopyWithImpl<$Res, $Val extends CounterState>
    implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? hiddenAdd = null,
    Object? hiddenSub = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      hiddenAdd: null == hiddenAdd
          ? _value.hiddenAdd
          : hiddenAdd // ignore: cast_nullable_to_non_nullable
              as bool,
      hiddenSub: null == hiddenSub
          ? _value.hiddenSub
          : hiddenSub // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CounterStatesImplCopyWith<$Res>
    implements $CounterStateCopyWith<$Res> {
  factory _$$CounterStatesImplCopyWith(
          _$CounterStatesImpl value, $Res Function(_$CounterStatesImpl) then) =
      __$$CounterStatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter, bool hiddenAdd, bool hiddenSub});
}

/// @nodoc
class __$$CounterStatesImplCopyWithImpl<$Res>
    extends _$CounterStateCopyWithImpl<$Res, _$CounterStatesImpl>
    implements _$$CounterStatesImplCopyWith<$Res> {
  __$$CounterStatesImplCopyWithImpl(
      _$CounterStatesImpl _value, $Res Function(_$CounterStatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
    Object? hiddenAdd = null,
    Object? hiddenSub = null,
  }) {
    return _then(_$CounterStatesImpl(
      null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
      hiddenAdd: null == hiddenAdd
          ? _value.hiddenAdd
          : hiddenAdd // ignore: cast_nullable_to_non_nullable
              as bool,
      hiddenSub: null == hiddenSub
          ? _value.hiddenSub
          : hiddenSub // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CounterStatesImpl implements CounterStates {
  const _$CounterStatesImpl(this.counter,
      {this.hiddenAdd = false, this.hiddenSub = false});

  @override
  final int counter;
  @override
  @JsonKey()
  final bool hiddenAdd;
  @override
  @JsonKey()
  final bool hiddenSub;

  @override
  String toString() {
    return 'CounterState.state(counter: $counter, hiddenAdd: $hiddenAdd, hiddenSub: $hiddenSub)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterStatesImpl &&
            (identical(other.counter, counter) || other.counter == counter) &&
            (identical(other.hiddenAdd, hiddenAdd) ||
                other.hiddenAdd == hiddenAdd) &&
            (identical(other.hiddenSub, hiddenSub) ||
                other.hiddenSub == hiddenSub));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counter, hiddenAdd, hiddenSub);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CounterStatesImplCopyWith<_$CounterStatesImpl> get copyWith =>
      __$$CounterStatesImplCopyWithImpl<_$CounterStatesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int counter, bool hiddenAdd, bool hiddenSub)
        state,
  }) {
    return state(counter, hiddenAdd, hiddenSub);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int counter, bool hiddenAdd, bool hiddenSub)? state,
  }) {
    return state?.call(counter, hiddenAdd, hiddenSub);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int counter, bool hiddenAdd, bool hiddenSub)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(counter, hiddenAdd, hiddenSub);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CounterStates value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CounterStates value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CounterStates value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class CounterStates implements CounterState {
  const factory CounterStates(final int counter,
      {final bool hiddenAdd, final bool hiddenSub}) = _$CounterStatesImpl;

  @override
  int get counter;
  @override
  bool get hiddenAdd;
  @override
  bool get hiddenSub;
  @override
  @JsonKey(ignore: true)
  _$$CounterStatesImplCopyWith<_$CounterStatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
