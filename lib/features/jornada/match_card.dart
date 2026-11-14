import 'package:flutter/material.dart';

import 'marcador_selector.dart';
import 'partido.dart';

class MatchCard extends StatelessWidget {
  final Partido partido;

  const MatchCard({super.key, required this.partido});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Column(
          children: [
            Row(
              spacing: 12,
              children: [
                const Icon(Icons.shield, color: Colors.red),
                Expanded(child: Text(partido.local)),
                MarcadorSelector(valor: partido.golesLocal, onChanged: (nuevo) {}),
              ],
            ),
            Row(
              spacing: 12,
              children: [
                const Icon(Icons.shield, color: Colors.blue),
                Expanded(child: Text(partido.visitante)),
                MarcadorSelector(valor: partido.golesVisitante, onChanged: (nuevo) {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
