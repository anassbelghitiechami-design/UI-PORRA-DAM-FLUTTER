import 'package:flutter/material.dart';

import 'match_card.dart';
import 'partido.dart';

class PantallaJornada extends StatelessWidget {
  const PantallaJornada({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          width: double.infinity,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset('assets/images/fondo_pantalla_hd.webp', fit: BoxFit.cover),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black54, Colors.black87],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    Text(
                      'Jornada 1',
                      style: TextStyle(
                        fontFamily: 'boldonse',
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Tu porra para esta jornada',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Row(
                      spacing: 8,
                      children: [
                        Icon(Icons.calendar_month, size: 16, color: Colors.white),
                        Text(
                          'Se cierra el: Sáb 12 oct · 16:00',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 8),
            children: const [
              MatchCard(
                partido: Partido(
                  local: 'Atlético Madrid',
                  visitante: 'Real Madrid',
                  golesLocal: 2,
                  golesVisitante: 1,
                ),
              ),
              MatchCard(
                partido: Partido(
                  local: 'FC Barcelona',
                  visitante: 'Villarreal CF',
                  golesLocal: 3,
                  golesVisitante: 0,
                ),
              ),
              MatchCard(
                partido: Partido(
                  local: 'Sevilla FC',
                  visitante: 'Real Sociedad',
                  golesLocal: 1,
                  golesVisitante: 1,
                ),
              ),
              MatchCard(
                partido: Partido(
                  local: 'Betis',
                  visitante: 'Valencia CF',
                  golesLocal: 2,
                  golesVisitante: 1,
                ),
              ),
              MatchCard(
                partido: Partido(
                  local: 'Athletic Club',
                  visitante: 'Celta de Vigo',
                  golesLocal: 1,
                  golesVisitante: 0,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              minimumSize: const Size.fromHeight(52),
            ),
            onPressed: () {},
            child: const Text('Guardar pronósticos'),
          ),
        ),
      ],
    );
  }
}
