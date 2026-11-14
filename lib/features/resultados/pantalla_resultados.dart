import 'package:flutter/material.dart';

import 'resultado_fila.dart';

class PantallaResultados extends StatelessWidget {
  const PantallaResultados({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Row(
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Resultados',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Resultados oficiales y puntos obtenidos',
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Row(
                children: [
                  Text('Jornada 1', style: TextStyle(fontSize: 12)),
                  Icon(Icons.arrow_drop_down, size: 18),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Card(
          margin: EdgeInsets.zero,
          color: Colors.white,
          child: Column(
            children: [
              const ResultadoFila(
                local: 'Atlético Madrid',
                visitante: 'Real Madrid',
                golesLocal: 2,
                golesVisitante: 1,
                tuPorra: '2 - 1',
                puntos: 8,
              ),
              const ResultadoFila(
                local: 'FC Barcelona',
                visitante: 'Villarreal CF',
                golesLocal: 3,
                golesVisitante: 0,
                tuPorra: '2 - 0',
                puntos: 4,
              ),
              const ResultadoFila(
                local: 'Sevilla FC',
                visitante: 'Real Sociedad',
                golesLocal: 1,
                golesVisitante: 1,
                tuPorra: '1 - 0',
                puntos: 2,
              ),
              const ResultadoFila(
                local: 'Betis',
                visitante: 'Valencia CF',
                golesLocal: 2,
                golesVisitante: 1,
                tuPorra: '1 - 1',
                puntos: 0,
              ),
              const ResultadoFila(
                local: 'Athletic Club',
                visitante: 'Celta de Vigo',
                golesLocal: 1,
                golesVisitante: 0,
                tuPorra: '1 - 0',
                puntos: 8,
              ),
              Container(
                margin: const EdgeInsets.all(12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  spacing: 8,
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    Expanded(child: Text('Total jornada')),
                    Text(
                      '+22 pts',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
