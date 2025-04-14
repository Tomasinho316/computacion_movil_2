import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),

            // Logo
            Center(
              child: Image.asset(
                'assets/logo_chile_rugby.png',
                height: 100,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 20),

            // Imagen principal
            Image.asset(
              'assets/federacion_top.png',
              fit: BoxFit.cover,
              width: double.infinity,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 180,
                  color: Colors.indigo[900],
                //   child: const Center(
                //     child: Text(
                //       'FEDERACIÓN DEPORTIVA TOP\nNACIONAL DE RUGBY',
                //       textAlign: TextAlign.center,
                //       style: TextStyle(
                //         fontSize: 22,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),
                );
              },
            ),

            const SizedBox(height: 30),

            // Botones de navegación justo debajo de la imagen
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/fixture'),
                    style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 48)),
                    child: const Text('Ver Fixture'),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/news'),
                    style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 48)),
                    child: const Text('Noticias'),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/federacion'),
                    style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 48)),
                    child: const Text('Fedaración'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // Bloque de auspiciadores
            Container(
              width: double.infinity,
              color: const Color(0xFF00134A),
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Column(
                children: [
                  const Text(
                    'Banco de Chile',
                    style: TextStyle(
                      fontFamily: 'Georgia',
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Wrap(
                    spacing: 40,
                    runSpacing: 20,
                    alignment: WrapAlignment.center,
                    children: const [
                      Text('KING', style: _LogoStyle()),
                      Text('pax', style: _LogoStyle()),
                      Text('kunstmann', style: _LogoStyle()),
                      Text('ESPN', style: _LogoStyle()),
                      Text('TEAM CH', style: _LogoStyle(fontSize: 14)),
                    ],
                  ),
                ],
              ),
            ),

            // Imagen institucional
            Image.asset(
              'assets/federacion_banner.png',
              fit: BoxFit.cover,
              width: double.infinity,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 180,
                  color: Colors.indigo[900],
                  child: const Center(
                    child: Text(
                      'FEDERACIÓN DEPORTIVA\nNACIONAL DE RUGBY',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class _LogoStyle extends TextStyle {
  const _LogoStyle({double fontSize = 20})
      : super(
          fontSize: fontSize,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        );
}
