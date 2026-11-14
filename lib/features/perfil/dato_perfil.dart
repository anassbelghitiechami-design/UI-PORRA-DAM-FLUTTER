import 'package:flutter/material.dart';

class DatoPerfil extends StatelessWidget {
  final String valor;
  final String etiqueta;

  const DatoPerfil({super.key, required this.valor, required this.etiqueta});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              valor,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              etiqueta,
              style: const TextStyle(fontSize: 12, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
