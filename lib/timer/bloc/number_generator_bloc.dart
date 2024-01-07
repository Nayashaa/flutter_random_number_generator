import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_random_number_generator/random_number.dart';
import 'package:meta/meta.dart';

part 'number_generator_event.dart';
part 'number_generator_state.dart';

class NumberGeneratorBloc extends Bloc<NumberGeneratorEvent, NumberGeneratorState> {
  NumberGeneratorBloc() : super(NumberGeneratorInitial(randomNumber: 0)) {
    on<StartRandomNumber>((event, emit) {
      final randomNumberStream = Generator().generateRandomNumbers();
      randomNumberStream.listen((randomNumber) {
        emit(NumberGeneratorInitial(randomNumber: randomNumber));
      });
    });

    on<PauseRandomNumber>((event, emit) {
      // Do nothing, just pause the random number stream
    });
  }
}







// import 'dart:async';

// import 'package:bloc/bloc.dart';
// import 'package:flutter_random_number_generator/random_number.dart';
// import 'package:meta/meta.dart';

// part 'number_generator_event.dart';
// part 'number_generator_state.dart';

// class NumberGeneratorBloc extends Bloc<NumberGeneratorEvent, NumberGeneratorState> {
//   NumberGeneratorBloc() : super(NumberGeneratorInitial(duration: 0)) {
//     on<NumberGeneratorEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//   }
// }








//  var _generator;
//  final Generator = _generator;
//     // StreamSubscription<int>? _tickerSubscription;