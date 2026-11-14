import 'package:flutter/material.dart';

class FilaClasificacion extends StatelessWidget {
  final int posicion;
  final String alias;
  final int puntos;
  final Color color;
  final bool esTuya;

  const FilaClasificacion({
    super.key,
    required this.posicion,
    required this.alias,
    required this.puntos,
    required this.color,
    this.esTuya = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: esTuya ? Colors.green.shade50 : Colors.white,
      child: Row(
        spacing: 12,
        children: [
          Container(
            width: 26,
            height: 26,
            decoration: BoxDecoration(
              color: posicion <= 3 ? Colors.orange.shade100 : Colors.transparent,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Center(
              child: Text(
                '$posicion',
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Text(
                alias.substring(0, 1),
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: Text(
              alias,
              style: TextStyle(
                fontWeight: esTuya ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
          Text(
            '$puntos',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
