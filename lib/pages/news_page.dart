import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  final List<Map<String, String>> noticias = [
    {
      'titulo': 'La Casa de Defiende: Triunfazo de Selknam Rugby ante Tarucas en el primer partido de la historia entre estas franquicias',
      'fecha': 'Mar 18, 2025',
      'contenido':
          'Un partido histórico fue el que se vivió el domingo 16 de marzo en el CARR del Parque Mahuida ante el debutante del Súper Rugby Américas, Tarucas de Tucumán, con un final de película dejando el marcador en 49-24 favorable a Selknam Rugby. La Casa del Rugby Chileno se...',
    },
    {
      'titulo': 'Dura caída de Selknam Rugby ante Peñarol Rugby en Montevideo',
      'fecha': 'Mar 18, 2025',
      'contenido':
          'Con un peleado resultado final de 22-18, Peñarol Rugby se impuso ante la franquicia chilena en el Estadio Charrúa, el pasado 7 de marzo, quedando Selknam Rugby en el segundo lugar de la tabla del Súper Rugby Américas 2025. El primer clásico de la fecha, Peñarol Rugby...',
    },
    {
      'titulo': 'Los Cóndores 7s se quedan con la primera fecha HSBC Sevens Challenger – Ciudad del Cabo, Sudáfrica',
      'fecha': 'Mar 3, 2025',
      'contenido':
          'Los Cóndores 7s volaron alto por Ciudad del Cabo y se coronaron campeones de la Primera Fecha del HSBC Sevens Challenger 2025 Chile 29 – 17 Portugal. Formación: 1. Clemente Armstrong, 7. Lucca Avelli (c), 23. Ernesto Tchimini, 9. Sebastián Bianchi, 10. Diego Warnken,...',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00134A),
      appBar: AppBar(
        title: Text('Noticias'),
        backgroundColor: const Color(0xFF00134A),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'NOTICIAS',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 32),
            Wrap(
              spacing: 16,
              runSpacing: 24,
              children: noticias.map((noticia) {
                return Container(
                  width: MediaQuery.of(context).size.width > 600
                      ? (MediaQuery.of(context).size.width / 2) - 24
                      : double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 6,
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            noticia['titulo']!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            noticia['fecha']!,
                            style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                          ),
                          SizedBox(height: 12),
                          Text(
                            noticia['contenido']!,
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'leer más',
                            style: TextStyle(
                              color: Colors.blue[700],
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}