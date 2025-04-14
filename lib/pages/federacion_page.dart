import 'package:flutter/material.dart';

class FederacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Federación'),
        backgroundColor: Color(0xFF00134A),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header sin imagen de fondo
            Container(
              width: double.infinity,
              height: 180,
              color: Colors.black87,
              padding: EdgeInsets.only(left: 20, bottom: 30),
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Nido de Cóndores',
                    style: TextStyle(
                      color: Colors.white70,
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Bienvenidos a la Federación\nDeportiva Nacional de Rugby',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Bloque azul con logos
            Container(
              color: Color(0xFF00134A),
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/logo_condores_selknam.png', height: 50),
                  Image.asset('assets/logo_federacion.png', height: 50),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        '70',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'AÑOS DE RUGBY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Sección dividida
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Presidente
                  Expanded(
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset('assets/presidente.jpg', height: 220, fit: BoxFit.cover),
                        ),
                        Positioned(
                          left: 10,
                          bottom: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'CRISTIAN RUDLOFF',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  shadows: [Shadow(blurRadius: 4, color: Colors.black)],
                                ),
                              ),
                              Text(
                                'Presidente de Chile Rugby',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  shadows: [Shadow(blurRadius: 4, color: Colors.black)],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(width: 16),

                  // Noticia sin imagen, fondo azul
                  Expanded(
                    child: Container(
                      height: 220,
                      decoration: BoxDecoration(
                        color: Color(0xFF00134A),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'CHILE RUGBY CUMPLE 70 AÑOS DE HISTORIA',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          const Text(
                            'La Federación Deportiva Nacional de Rugby cumple 70 años este 04 de mayo, justamente, en un año...',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 13,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Color(0xFF00134A),
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                              ),
                              onPressed: () {},
                              child: Text('Leer más'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
