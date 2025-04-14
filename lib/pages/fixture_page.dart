import 'package:flutter/material.dart';

class FixturePage extends StatelessWidget {
  final List<Map<String, dynamic>> partidos = [
    {
      'fecha': '06 JUL 2024',
      'hora': '17:00',
      'equipoA': 'Chile',
      'banderaA': 'assets/chile.png',
      'equipoB': 'Argentina',
      'banderaB': 'assets/argentina.png',
      'estadio': 'Estadio Nacional',
      'resultado': '15 - 28'
    },
    {
      'fecha': '13 JUL 2024',
      'hora': '19:00',
      'equipoA': 'Chile',
      'banderaA': 'assets/chile.png',
      'equipoB': 'Uruguay',
      'banderaB': 'assets/uruguay.png',
      'estadio': 'Estadio Sausalito',
      'resultado': '22 - 19'
    },
    {
      'fecha': '20 JUL 2024',
      'hora': '18:00',
      'equipoA': 'Chile',
      'banderaA': 'assets/chile.png',
      'equipoB': 'Brasil',
      'banderaB': 'assets/brasil.png',
      'estadio': 'Estadio Monumental',
      'resultado': null // Futuro partido
    },
    {
      'fecha': '27 JUL 2024',
      'hora': '16:30',
      'equipoA': 'Chile',
      'banderaA': 'assets/chile.png',
      'equipoB': 'Paraguay',
      'banderaB': 'assets/paraguay.png',
      'estadio': 'Estadio La Granja',
      'resultado': null // Futuro partido
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        title: Text('Fixture 2024'),
        backgroundColor: const Color(0xFF00134A), // Azul institucional
        foregroundColor: Colors.white, // Texto e íconos en blanco
        ),
      body: ListView.builder(
        itemCount: partidos.length,
        padding: EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final partido = partidos[index];
          return Card(
            color: Colors.white,
            margin: EdgeInsets.only(bottom: 16),
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${partido['fecha']} · ${partido['hora']}',
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _equipoConBandera(partido['equipoA'], partido['banderaA']),
                      Text(
                        partido['resultado'] ?? 'vs',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: partido['resultado'] != null
                              ? const Color(0xFFAE0A26) // rojo institucional
                              : Colors.black,
                        ),
                      ),
                      _equipoConBandera(partido['equipoB'], partido['banderaB']),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(
                    partido['estadio'],
                    style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _equipoConBandera(String nombre, String imagenPath) {
    return Column(
      children: [
        Image.asset(
          imagenPath,
          width: 40,
          height: 25,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 4),
        Text(
          nombre,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
