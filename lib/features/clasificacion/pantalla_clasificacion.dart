import 'package:flutter/material.dart';

import 'fila_clasificacion.dart';

class PantallaClasificacion extends StatelessWidget {
  const PantallaClasificacion({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Row(
          children: [
            const Expanded(
              child: Text(
                'Clasificación',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
                  Text('General', style: TextStyle(fontSize: 12)),
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
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  spacing: 12,
                  children: [
                    SizedBox(
                      width: 26,
                      child: Text('#', style: TextStyle(fontSize: 12, color: Colors.black54)),
                    ),
                    Expanded(
                      child: Text(
                        'Participante',
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      ),
                    ),
                    Text('Puntos', style: TextStyle(fontSize: 12, color: Colors.black54)),
                  ],
                ),
              ),
              FilaClasificacion(posicion: 1, alias: 'Lucía R.', puntos: 45, color: Colors.brown.shade300),
              const FilaClasificacion(posicion: 2, alias: 'PabloDev', puntos: 41, color: Colors.blue),
              FilaClasificacion(posicion: 3, alias: 'Nerea_K', puntos: 40, color: Colors.brown.shade400),
              const FilaClasificacion(
                posicion: 4,
                alias: 'Tú · mcoma',
                puntos: 38,
                color: Colors.black87,
                esTuya: true,
              ),
              const FilaClasificacion(posicion: 5, alias: 'Hugo M.', puntos: 35, color: Colors.orange),
              const FilaClasificacion(posicion: 6, alias: 'Aitana', puntos: 33, color: Colors.purple),
              const FilaClasificacion(posicion: 7, alias: 'xavier.dev', puntos: 30, color: Colors.teal),
              const FilaClasificacion(posicion: 8, alias: 'Iván G.', puntos: 27, color: Colors.green),
              const FilaClasificacion(posicion: 9, alias: 'Sara P.', puntos: 26, color: Colors.indigo),
              const FilaClasificacion(posicion: 10, alias: 'Dani_804', puntos: 19, color: Colors.amber),
            ],
          ),
        ),
      ],
    );
  }
}
