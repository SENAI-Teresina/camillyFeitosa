import 'package:flutter/material.dart';

void main() {
  runApp(const TaskListApp());
}

class TaskListApp extends StatelessWidget {
  const TaskListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Tarefas'),
        ),
        body: TaskListScreen(),
      ),
    );
  }
}

class TaskListScreen extends StatelessWidget {
  final List<String> tasks = [
    'Comprar leite',
    'Pagar contas',
    'Fazer exercícios',
    'Ligar para o cliente',
    'Fazer compras',
    'Estudar',
  ];

  TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(tasks[index]),
          leading: const Icon(Icons.check_circle),
          onTap: () {
            
          },
        );
      },
    );
  }
}
