import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_app/feature/grocery/presentation/Bloc/counter_bloc/counter_event.dart';
import 'package:grocery_app/feature/grocery/presentation/Bloc/counter_bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>{
  CounterBloc():super(CounterState(counter : 0)){
    on<IncreaseCounter>((event, emit) => emit(CounterState(counter:state.counter + 1)));
    on<DecreaseCounter>((event, emit) => emit(CounterState(counter:state.counter - 1)));
  }
  
}