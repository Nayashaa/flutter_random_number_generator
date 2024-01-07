import 'dart:async';
import 'dart:math';

// void main() {
//   final randomNumbersStream = generateRandomNumbers();

//   final subscription = randomNumbersStream.listen((number) {
//     print("Generated number: $number");
//   });

//   // Cancel the subscription after some time (for demonstration purposes)
//   Future.delayed(Duration(seconds: 5), () {
//     subscription.cancel();
//   });
// }

class Generator {
  const Generator();
  Stream<int> generateRandomNumbers() async* {
    final random = Random();
    // while (true) {
    yield random.nextInt(100); // Generates a random number between 0 and 99
    await Future.delayed(const Duration(seconds: 1)); // Wait for 1 second before emitting the next number
    // }
  }
}
