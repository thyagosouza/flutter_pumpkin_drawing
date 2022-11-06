import 'package:flutter/material.dart';

import 'pumpkin_drawing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pumpking Drawing',
      home: const PumpkinDrawing(),
    );
  }
}
