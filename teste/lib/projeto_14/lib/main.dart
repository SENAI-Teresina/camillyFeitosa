import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cardapio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PreferencesForm(),
    );
  }
}

class PreferencesForm extends StatefulWidget {
  @override
  _PreferencesFormState createState() => _PreferencesFormState();
}

class _PreferencesFormState extends State<PreferencesForm> {
  bool _option1 = false;
  bool _option2 = false;
  bool _option3 = false;
  bool _option4 = false;
  bool _option5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cardapio'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selecione suas preferências:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            /*opcoes*/
            CheckboxListTile(
              title: Text('Leite'),
              value: _option1,
              onChanged: (value) {
                setState(() {
                  _option1 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Café'),
              value: _option2,
              onChanged: (value) {
                setState(() {
                  _option2 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Suco'),
              value: _option3,
              onChanged: (value) {
                setState(() {
                  _option3 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Torrada'),
              value: _option4,
              onChanged: (value) {
                setState(() {
                  _option4 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Pão'),
              value: _option5,
              onChanged: (value) {
                setState(() {
                  _option5 = value!;
                });
              },
            ),

            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _showSelectedOptions,
              child: Text('Mostrar Seleções'),
            ),
          ],
        ),
      ),
    );
  }

  void _showSelectedOptions() {
    List<String> selectedOptions = [];

    if (_option1) {
      selectedOptions.add('Leite');
    }
    if (_option2) {
      selectedOptions.add('Café');
    }
    if (_option3) {
      selectedOptions.add('Suco');
    }
    if (_option4) {
      selectedOptions.add('Torrada');
    }
    if (_option5) {
      selectedOptions.add('Pão');
    }


    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Preferências Selecionadas'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: selectedOptions
                .map((option) => Text(option))
                .toList(),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Fechar'),
            ),
          ],
        );
      },
    );
  }
}
