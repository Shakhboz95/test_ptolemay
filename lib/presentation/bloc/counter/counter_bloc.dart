import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_bloc.freezed.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterStates(0, hiddenSub: true)) {
    on<CounterEvent>((event, emit) {
      int counter = state.counter;
      int num = 1;
      event.when(increment: (isDark) {
        if (isDark) {
          num = 2;
        }
        if (counter == 10 || counter + num >= 10) {
          emit(const CounterStates(10, hiddenAdd: true));
        } else {
          emit(CounterStates(state.counter + num));
        }
      }, decrement: (isDark) {
        if (isDark) {
          num = 2;
        }
        if (counter == 0 || counter - num <= 0) {
          emit(const CounterStates(0, hiddenSub: true));
        } else {
          emit(CounterStates(state.counter - num));
        }
      });
    });
  }
}

@freezed
abstract class CounterEvent with _$CounterEvent {
  const factory CounterEvent.increment(bool isDark) = IncrementEvent;
  const factory CounterEvent.decrement(bool isDark) = DecrementEvent;
}

@freezed
abstract class CounterState with _$CounterState {
  const factory CounterState.state(int counter,
      {@Default(false) bool hiddenAdd,
      @Default(false) bool hiddenSub}) = CounterStates;
}
