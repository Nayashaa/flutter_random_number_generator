import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_random_number_generator/random_number.dart';
import 'package:meta/meta.dart';

part 'number_generator_event.dart';
part 'number_generator_state.dart';

class NumberGeneratorBloc extends Bloc<NumberGeneratorEvent, NumberGeneratorState> {
  final _ticker;
  StreamSubscription<int>? _tickerSubscription;

  NumberGeneratorBloc() : super(NumberGeneratorInitial(randomNumber: 0)) {
    on<StartRandomNumber>(_onStarted);
    on<PauseRandomNumber>(_onStopped);
  }

  void _onStarted(StartRandomNumber event, Emitter<NumberGeneratorState> emit) async {
    await for (final number in generateRandomNumbers()) {
      emit(NumberGeneratorInitial(randomNumber: number)); // Emit generated number in state
      print("Generated number: $number");
    }
  }

  void _onStopped(PauseRandomNumber event, Emitter<NumberGeneratorState> emit) {
    _tickerSubscription?.cancel();
    print("stopped");
  }
}


// class NumberGeneratorBloc extends Bloc<NumberGeneratorEvent, NumberGeneratorState> {
//   StreamSubscription<int>? _tickerSubscription;
//   NumberGeneratorBloc() : super(NumberGeneratorInitial(randomNumber: 0)) {
//     on<StartRandomNumber>((_onStarted));

//     on<PauseRandomNumber>((_onStopped));
//   }
// /////////////////////////////////////////////

//   void _onStarted(StartRandomNumber event, Emitter<NumberGeneratorState> emit) async {
//     _tickerSubscription?.cancel();
//     await for (final number in generateRandomNumbers()) {
//       emit(NumberGeneratorInitial(randomNumber: number)); // Emit generated number in state
//       print("Generated number: $number");
//     }
//   }
// }

// void _onStopped(PauseRandomNumber event, Emitter<NumberGeneratorState> emit) {
//   _tickerSubscription?.cancel();
//   print("stopped");
// }

//   void _onStarted(StartRandomNumber event, Emitter<NumberGeneratorState> emit) async {
//     final randomNumbersStream = generateRandomNumbers();

//     print("Started");

//     final subscription = randomNumbersStream.listen((number) {
//       emit(NumberGeneratorInitial(randomNumber: number)); // Emit generated number in state
//       print("Generated number: $number");
//     });

//     // Cancel the subscription after some time (for demonstration purposes)
//     await Future.delayed(Duration(seconds: 25));
//     subscription.cancel();
//   }
// }

// void _onStarted(StartRandomNumber event, Emitter<NumberGeneratorState> emit) {
//   final randomNumbersStream = generateRandomNumbers();
//   final subscription = randomNumbersStream.listen((number) {
//     print("Generated number: $number");
//   });

//   // Cancel the subscription after some time (for demonstration purposes)
//   Future.delayed(Duration(seconds: 5), () {
//     subscription.cancel();
//   });

//   emit(NumberGeneratorInitial(randomNumber: 4));
//   print("stared ");
// }
////////////////////////////////////





 





// import 'dart:math';

// import 'package:bloc/bloc.dart';
// import 'package:flutter_random_number_generator/random_number.dart';
// import 'package:meta/meta.dart';

// part 'number_generator_event.dart';
// part 'number_generator_state.dart';

// class NumberGeneratorBloc extends Bloc<NumberGeneratorEvent, NumberGeneratorState> {
//   NumberGeneratorBloc() : super(NumberGeneratorInitial(randomNumber: 0)) {
//     // on<StartRandomNumber>((event, emit) {
//     //   final randomNumberStream = Generator().generateRandomNumbers();
//     //   randomNumberStream.listen((randomNumber) {
//     //     emit(NumberGeneratorInitial(randomNumber: randomNumber));
//     //   });
//     // });

//     on<StartRandomNumber>((event, emit) {
//       final randomNumberStream = Generator().generateRandomNumbers();
//       randomNumberStream.listen((randomNumber) {
//         emit(NumberGeneratorInitial(randomNumber: randomNumber));
//       });
//     });

//     on<PauseRandomNumber>((event, emit) {
//       print("stopped!");

//       // Do nothing, just pause the random number stream
//     });
//   }
// }

// class Generator {
//   const Generator();
//   Stream<int> generateRandomNumbers() async* {
//     final random = Random();
//     while (true) {
//       yield random.nextInt(100); // Generates a random number between 0 and 99
//       await Future.delayed(const Duration(seconds: 1)); // Wait for 1 second before emitting the next number
//     }
//   }
// }







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