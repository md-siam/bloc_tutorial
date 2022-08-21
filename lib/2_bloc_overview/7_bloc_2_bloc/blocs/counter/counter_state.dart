part of 'counter_bloc.dart';

/// [Process of creating a state]:
///   1. create ClassState
///   2. create variable
///   3. Generate `Constrictor`
///   4. ClassState `extends` Equatable
///   5. Generate `Equitable`
///   6. Generate `toString()`
///   7. Generate `copyWith()`
///   8. write `factory` contactor (i.e. CounterState.initial())

class CounterState extends Equatable {
  final int counter;
  const CounterState({
    required this.counter,
  });

  factory CounterState.initial() {
    return const CounterState(counter: 0);
  }

  @override
  List<Object> get props => [counter];

  @override
  String toString() => 'CounterState(counter: $counter)';

  CounterState copyWith({
    int? counter,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }
}
