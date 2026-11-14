import 'package:flutter/material.dart';

import '../clasificacion/clasificacion.dart';
import '../jornada/jornada.dart';
import '../perfil/perfil.dart';
import '../resultados/resultados.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int _pestana = 0;

  static const _pestanas = [
    PantallaJornada(),
    PantallaResultados(),
    PantallaClasificacion(),
    PantallaPerfil(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        leading: const Icon(Icons.menu),
        title: const Text(
          'Porra DAM',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              '38 pts',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
      body: _pestanas[_pestana],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _pestana,
        onDestinationSelected: (indice) => setState(() {
          _pestana = indice;
        }),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.calendar_month),
            label: 'Jornada',
            tooltip: 'Jornada',
          ),
          NavigationDestination(
            icon: Icon(Icons.sports_soccer),
            label: 'Resultados',
            tooltip: 'Resultados',
          ),
          NavigationDestination(
            icon: Icon(Icons.leaderboard),
            label: 'Clasificación',
            tooltip: 'Clasificación',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Perfil',
            tooltip: 'Perfil',
          ),
        ],
      ),
    );
  }
}
