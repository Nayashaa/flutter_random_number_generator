import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_random_number_generator/timer/bloc/number_generator_bloc.dart';

class GeneratorPage extends StatelessWidget {
  const GeneratorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NumberGeneratorBloc(),
      child: GeneratorView(),
    );
  }
}

class GeneratorView extends StatelessWidget {
  const GeneratorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🔥 Random Number Generator 🔥')),
      body: Stack(
        children: [
          Background(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RandomNumberVisual(),
                ActionButton(),
                RandomColorWidget(),
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
      context.select((NumberGeneratorBloc bloc) => bloc.state.randomNumber.toString()),
      style: Theme.of(context).textTheme.displayLarge,
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: () => context.read<NumberGeneratorBloc>().add(StartRandomNumber()), child: Text("Start")),
          TextButton(onPressed: () => context.read<NumberGeneratorBloc>().add(PauseRandomNumber()), child: Text("Stop"))
        ],
      ),
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
