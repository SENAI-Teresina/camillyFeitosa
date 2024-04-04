import 'package:flutter/material.dart';

void main() {
  runApp(const TaskListApp());
}

class TaskListApp extends StatelessWidget {
  const TaskListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Tarefas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const TaskListHomePage(),
    );
  }
}

class TaskListHomePage extends StatefulWidget {
  const TaskListHomePage({super.key});

  @override
  _TaskListHomePageState createState() => _TaskListHomePageState();
}

class _TaskListHomePageState extends State<TaskListHomePage> {
  List<Task> tasks = [];

  @override
  void initState() {
    super.initState();
  }

  void _addTask(String description) {
    setState(() {
      tasks.add(Task(description: description, completed: false));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lista de Tarefas',
          textAlign: TextAlign.center, // Alinha o texto ao centro
        ),
        centerTitle: true, // Centraliza o título
      ),
      body: Column(
        children: <Widget>[
          TaskInputField(
            onSubmitted: (value) {
              _addTask(value);
            },
          ),
          Expanded(
            child: TaskList(
              tasks: tasks,
              onTaskToggle: (index) {
                setState(() {
                  tasks[index].toggleCompleted();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TaskInputField extends StatelessWidget {
  final Function(String) onSubmitted;

  const TaskInputField({super.key, required this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        onSubmitted: onSubmitted,
        decoration: const InputDecoration(
          labelText: 'Adicionar Tarefa',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class TaskList extends StatelessWidget {
  final List<Task> tasks;
  final Function(int) onTaskToggle;

  const TaskList({super.key, required this.tasks, required this.onTaskToggle});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (BuildContext context, int index) {
        return TaskListItem(
          task: tasks[index],
          onToggle: () {
            onTaskToggle(index);
          },
        );
      },
    );
  }
}

class TaskListItem extends StatelessWidget {
  final Task task;
  final Function() onToggle;

  const TaskListItem({super.key, required this.task, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(task.description),
      trailing: Checkbox(
        value: task.completed,
        onChanged: (value) {
          onToggle();
        },
      ),
    );
  }
}

class Task {
  String description;
  bool completed;

  Task({required this.description, required this.completed});

  void toggleCompleted() {
    completed = !completed;
  }
}