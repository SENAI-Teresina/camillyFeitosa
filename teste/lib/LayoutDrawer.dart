import 'package:flutter/material.dart';

void main() {
  runApp(const NavigationDrawerApp());
}

class NavigationDrawerApp extends StatelessWidget {
  const NavigationDrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Loja da Camys'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Vestidos'),
                onTap: () {
                 
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Mini saia'),
                onTap: () {
                  
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Calçados'),
                onTap: () {
                 
                  Navigator.pop(context);
                },
              ),
              
            ],
          ),
        ),
        body: const Center(
          child: Text('Conteúdo da Página Principal'),
        ),
      ),
    );
  }
}
