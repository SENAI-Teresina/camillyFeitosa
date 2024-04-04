import 'package:flutter/material.dart';

void main() {
  runApp(const FormApp());
}

class FormApp extends StatelessWidget {
  const FormApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formulário Simples'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SimpleForm(),
        ),
      ),
    );
  }
}

class SimpleForm extends StatefulWidget {
  const SimpleForm({super.key});

  @override
  _SimpleFormState createState() => _SimpleFormState();
}

class _SimpleFormState extends State<SimpleForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        TextField(
          controller: _nameController,
          decoration: const InputDecoration(
            labelText: 'Nome',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16.0),
        TextField(
          controller: _emailController,
          decoration: const InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16.0),
        FlatButton(
          onPressed: () {
            
            String name = _nameController.text;
            String email = _emailController.text;

            print('Nome: $name, Email: $email');
          },
          color: Colors.blue,
          textColor: Colors.white,
          child: const Text('Enviar'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }
  
  FlatButton({required Null Function() onPressed, required MaterialColor color, required Color textColor, required Text child}) {}
}
