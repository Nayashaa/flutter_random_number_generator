import 'package:flutter/material.dart';
import 'dart:math';

class GeneratorPage extends StatelessWidget {
  const GeneratorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const GeneratorView();
  }
}

class GeneratorView extends StatelessWidget {
  const GeneratorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🔥 Random Number Generator 🔥')),
      body: const Stack(
        children: [
          Background(),
          Center(
            child: Column(
              children: [
                RandomNumberVisual(),
                ActionButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RandomNumberVisual extends StatelessWidget {
  const RandomNumberVisual({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "0",
      style: Theme.of(context).textTheme.displayLarge,
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(onPressed: () {}, child: Text("Next Number")),
        TextButton(onPressed: () {}, child: Text("Save"))
      ],
    );
  }
}

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue.shade50,
            Color.fromARGB(255, 129, 171, 66),
          ],
        ),
      ),
    );
  }
}

class RandomColorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final random = Random();
    final color = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );

    return Container(
      color: color,
      child: Center(
        child: Text(
          'Random Color',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white, // Text color will adapt based on background color
          ),
        ),
      ),
    );
  }
}
