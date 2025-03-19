import 'package:assignment_weekend/EXERCISE-2/widgets/color_buttons.dart';
import 'package:assignment_weekend/EXERCISE-2/widgets/counter_text.dart';
import 'package:flutter/material.dart';

class ColorTapsScreen extends StatelessWidget {
  const ColorTapsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Color Taps')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CounterText(), //Displays counters.
          const SizedBox(height: 20),
          const ColorButtons(), //Handle tap logic.
        ],
      ),
    );
  }
}
