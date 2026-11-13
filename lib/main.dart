import 'package:flutter/material.dart';

import 'features/principal/pantalla_principal.dart';

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
      home: const PantallaPrincipal(),
    );
  }
}
