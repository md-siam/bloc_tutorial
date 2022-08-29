import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<IncrementCounterEvent>(
      _handleIncrementCounterEvent,
      // transformer: droppable(),
      // transformer: restartable(),
      transformer: sequential(),
    );

    on<DecrementCounterEvent>(
      _handleDecrementCounterEvent,
      // transformer: droppable(),
      // transformer: restartable(),
      transformer: sequential(),
    );
  }

  FutureOr<void> _handleIncrementCounterEvent(event, emit) async {
    await Future.delayed(const Duration(seconds: 4));
    emit(state.copyWith(counter: state.counter + 1));
  }

  FutureOr<void> _handleDecrementCounterEvent(event, emit) async {
    await Future.delayed(const Duration(seconds: 2));
    emit(state.copyWith(counter: state.counter - 1));
  }
}
