import 'package:flutter/material.dart';


// Único Scaffold compartido (appBar + barra inferior) del que cuelgan
// las cuatro pestañas. Ninguna pestaña monta su propio Scaffold.
class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int _pestana = 0;

  static const _titulos = ['Jornada 1', 'Resultados', 'Clasificación', 'Perfil'];

  static const _pestanas = [
    Center(child: Text('Jornada')),
    Center(child: Text('Resultados')),
    Center(child: Text('Clasificación')),
    Center(child: Text('Perfil')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titulos[_pestana]),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
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
