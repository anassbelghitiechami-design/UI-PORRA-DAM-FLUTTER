import 'package:flutter/material.dart';

class ResultadoFila extends StatelessWidget {
  final String local;
  final String visitante;
  final int golesLocal;
  final int golesVisitante;
  final String tuPorra;
  final int puntos;

  const ResultadoFila({
    super.key,
    required this.local,
    required this.visitante,
    required this.golesLocal,
    required this.golesVisitante,
    required this.tuPorra,
    required this.puntos,
  });

  @override
  Widget build(BuildContext context) {
    Color fondo = Colors.grey.shade200;
    Color texto = Colors.black54;
    if (puntos == 8) {
      fondo = Colors.green.shade100;
      texto = Colors.green;
    } else if (puntos == 0) {
      fondo = Colors.red.shade100;
      texto = Colors.red;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        spacing: 12,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                Row(
                  spacing: 8,
                  children: [
                    const Icon(Icons.shield, size: 18, color: Colors.red),
                    Text(local),
                  ],
                ),
                Row(
                  spacing: 8,
                  children: [
                    const Icon(Icons.shield, size: 18, color: Colors.blue),
                    Text(visitante),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: fondo,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Tu porra: $tuPorra',
                    style: TextStyle(fontSize: 12, color: texto),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                '$golesLocal',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                '$golesVisitante',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            width: 48,
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: fondo,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                puntos > 0 ? '+$puntos' : '0',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: texto,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
