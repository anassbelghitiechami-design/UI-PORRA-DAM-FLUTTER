import 'package:flutter/material.dart';

import 'dato_perfil.dart';

class PantallaPerfil extends StatelessWidget {
  const PantallaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 12,
        children: [
          const SizedBox(height: 8),
          Container(
            width: 96,
            height: 96,
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(48),
            ),
            child: const Center(
              child: Text(
                'T',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Text(
            'Tú · mcoma',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Grupo: 1A · DAM · 2026',
            style: TextStyle(color: Colors.black54),
          ),
          const Row(
            children: [
              Expanded(child: DatoPerfil(valor: '38', etiqueta: 'Puntos')),
              Expanded(child: DatoPerfil(valor: '4º', etiqueta: 'Posición')),
              Expanded(child: DatoPerfil(valor: '2', etiqueta: 'Exactos')),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              minimumSize: const Size.fromHeight(52),
            ),
            onPressed: () {},
            child: const Text('Salir de la porra'),
          ),
        ],
      ),
    );
  }
}
