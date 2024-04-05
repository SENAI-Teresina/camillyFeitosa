import 'package:flutter/material.dart';

void main() {
  runApp(ConfiguracaoApp());
}

class ConfiguracaoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Configuração',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: ConfiguracaoScreen(),
    );
  }
}

class ConfiguracaoScreen extends StatefulWidget {
  @override
  _ConfiguracaoScreenState createState() => _ConfiguracaoScreenState();
}

class _ConfiguracaoScreenState extends State<ConfiguracaoScreen> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuração'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Opção',
              style: TextStyle(fontSize: 20.0),
            ),
            Switch(
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
                // Alternar entre os temas claro e escuro
                if (switchValue) {
                  ThemeMode.dark;
                } else {
                  ThemeMode.light;
                }
              },
            ),
            SizedBox(height: 20.0),
            Text(
              switchValue ? 'Bluetooth desligado' : 'Bluetooth ligado',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
