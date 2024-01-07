part of 'number_generator_bloc.dart';

@immutable
sealed class NumberGeneratorState {
  final int randomNumber;

  const NumberGeneratorState({required this.randomNumber});
}

final class NumberGeneratorInitial extends NumberGeneratorState {
  NumberGeneratorInitial({required int randomNumber}) : super(randomNumber: randomNumber);

  @override
  String toString() => 'NumberGeneratorInitial { randomNumber: $randomNumber }';
}










// part of 'number_generator_bloc.dart';

// @immutable
// sealed class NumberGeneratorState {
//   final int duration;

//   NumberGeneratorState({required this.duration});
// }

// final class NumberGeneratorInitial extends NumberGeneratorState {
//   NumberGeneratorInitial({required super.duration});

//   @override
//   String toString() => 'TimerInitial { duration: $duration }';
// }

// final class NumberGeneratorUpdated extends NumberGeneratorState {
//   NumberGeneratorUpdated({required super.duration});

//   @override
//   String toString() => 'TimerInitial { duration: $duration }';
// }



// NumberInitial: Initial state showing a default number (e.g., 0).
// NumberUpdated: State reflecting a generated or updated number.