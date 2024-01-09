import 'package:flutter/material.dart';
import 'package:flutter_random_number_generator/random_number.dart';
import 'package:flutter_random_number_generator/timer/veiw/generatorPage.dart';

void main() {
  runApp(const MainApp());
  // final randomNumbersStream = generateRandomNumbers();

  // final subscription = randomNumbersStream.listen((number) {
  //   print("Generated number: $number");
  // });

  // // Cancel the subscription after some time (for demonstration purposes)
  // Future.delayed(Duration(seconds: 5), () {
  //   subscription.cancel();
  // });
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: GeneratorPage());
  }
}
