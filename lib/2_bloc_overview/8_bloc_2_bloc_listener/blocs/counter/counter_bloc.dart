import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int incrementSize = 1;

  CounterBloc() : super(CounterState.initial()) {
    on<ChangeCounterEvent>(((event, emit) {
      emit(state.copyWith(counter: state.counter + event.incrementSize));
    }));
  }
}
