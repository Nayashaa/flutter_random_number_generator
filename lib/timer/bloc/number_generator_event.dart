part of 'number_generator_bloc.dart';

@immutable
sealed class NumberGeneratorEvent {
  const NumberGeneratorEvent();
}

final class StartRandomNumber extends NumberGeneratorEvent {}

final class PauseRandomNumber extends NumberGeneratorEvent {}




// part of 'number_generator_bloc.dart';

// @immutable
// sealed class NumberGeneratorEvent {
//   // const NumberGeneratorEvent();
// }

// final class IncrementButtonPressed extends NumberGeneratorEvent {
//   final int duration;

//   IncrementButtonPressed({required this.duration});
// }

// final class ResetButtonPressed extends NumberGeneratorEvent {
//   ResetButtonPressed();
// }



// IncrementButtonPressed: Event triggered when a button is pressed to increment the number.
// ResetButtonPressed: Event triggered when a button is pressed to reset the number to its initial state.