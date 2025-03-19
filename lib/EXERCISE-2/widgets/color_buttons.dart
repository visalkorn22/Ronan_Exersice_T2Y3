import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/color_counters.dart';

class ColorButtons extends StatelessWidget {
  const ColorButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            Provider.of<ColorCounters>(context, listen: false)
                .incrementRed(); //accesses ColorCounters without rebuilding the widget.
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          child: const Text("Tap Red"),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {
            Provider.of<ColorCounters>(context, listen: false).incrementBlue();
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          child: const Text("Tap Blue"),
        ),
      ],
    );
  }
}
//When tapped, it updates the correct counter, triggering notifyListeners().
