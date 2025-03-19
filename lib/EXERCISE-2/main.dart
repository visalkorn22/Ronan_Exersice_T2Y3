import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/color_counters.dart';
import 'screens/color_taps_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ColorCounters(),
      child: const MyApp(),
    ),
  );
}

//we wrap the app with ChangeNotifierProvider to provide ColorCounters globally.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Taps App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ColorTapsScreen(),
    );
  }
}
//Now, any widget in the app can access and modify ColorCounters without passing data manually.
