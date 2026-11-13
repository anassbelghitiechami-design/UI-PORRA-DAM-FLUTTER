import 'package:flutter/material.dart';

import 'features/bienvenida/bienvenida.dart';

void main() {
  runApp(const PorraDamApp());
}

class PorraDamApp extends StatelessWidget {
  const PorraDamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Porra DAM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const PantallaBienvenida(),
    );
  }
}
