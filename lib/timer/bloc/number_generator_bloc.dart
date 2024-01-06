import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'number_generator_event.dart';
part 'number_generator_state.dart';

class NumberGeneratorBloc extends Bloc<NumberGeneratorEvent, NumberGeneratorState> {
  NumberGeneratorBloc() : super(NumberGeneratorInitial()) {
    on<NumberGeneratorEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
