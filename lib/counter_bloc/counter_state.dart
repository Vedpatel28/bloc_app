abstract class CounterState {
  int count = 0;

  CounterState({required this.count});
}

class CounterInit extends CounterState {
  CounterInit() : super(count: 0);
}

class IncrementState extends CounterState {
  IncrementState(int increment)
      : super(
          count: increment,
        );
}

class DecrementState extends CounterState {
  DecrementState(int decrement)
      : super(
          count: decrement,
        );
}

