import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/color_counters.dart';

class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ColorCounters>(
      //listens for changes and updates the counter text dynamically
      builder: (context, colorCounters, child) {
        return Column(
          children: [
            Text(
              'Red Taps: ${colorCounters.redCount}', //Displays red taps
              style: const TextStyle(fontSize: 20, color: Colors.red),
            ),
            Text(
              'Blue Taps: ${colorCounters.blueCount}', //Displays blue taps
              style: const TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ],
        );
      },
    );
  }
}
//redCount or blueCount changes, only this widget rebuilds (not the entire screen).
