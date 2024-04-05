import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Configurações de Idioma',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LanguageSettings(),
    );
  }
}

class LanguageSettings extends StatefulWidget {
  @override
  _LanguageSettingsState createState() => _LanguageSettingsState();
}

class _LanguageSettingsState extends State<LanguageSettings> {
  String _selectedLanguage = 'Português'; // Idioma padrão

  // Lista de idiomas disponíveis
  List<String> _languages = [
    'Português',
    'Inglês',
    'Espanhol',
    'Francês',
    'Alemão',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações de Idioma'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selecione seu idioma preferido:',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            DropdownButton<String>(
              value: _selectedLanguage,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedLanguage = newValue!;
                });
              },
              items: _languages.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Aqui você pode adicionar a lógica para aplicar o idioma selecionado
                // ao aplicativo e salvar as configurações, por exemplo.
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Idioma $_selectedLanguage selecionado.'),
                  ),
                );
              },
              child: Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}