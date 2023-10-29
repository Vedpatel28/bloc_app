import 'package:bloc_app/counter_bloc/counter_event.dart';
import 'package:bloc_app/counter_bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInit()) {
    on<CounterIncrementEvent>((event, emit) {
      emit(IncrementState(state.count + 1));
    });

    on<CounterDecrementEvent>((event, emit) {
      emit(DecrementState(state.count - 1));
    });
  }
}
