import 'package:flutter/material.dart';

void main() {
  runApp(const CardLayoutApp());
}

class CardLayoutApp extends StatelessWidget {
  const CardLayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layout de Cartão'),
        ),
        body: const Center(
          child: CardWidget(
            imageUrl: 'https://via.placeholder.com/150',
            title: 'Título do Cartão',
            description: 'Descrição do Cartão.',
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const CardWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
