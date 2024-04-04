import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Botoes'),
        ),
        body: const ButtonRow(),
      ),
    );
  }
}

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
             
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.blue,
              child: const Text(
                'Botão 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10), 
          GestureDetector(
            onTap: () {
              
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.green,
              child: const Text(
                'Botão 2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10), 
          GestureDetector(
            onTap: () {
              
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.orange,
              child: const Text(
                'Botão 3',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
