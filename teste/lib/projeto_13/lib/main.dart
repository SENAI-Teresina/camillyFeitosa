import 'package:flutter/material.dart';

void main() {
  runApp(MusicPlayerApp());
}

class MusicPlayerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: VolumeControlScreen(),
    );
  }
}

class VolumeControlScreen extends StatefulWidget {
  @override
  _VolumeControlScreenState createState() => _VolumeControlScreenState();
}

class _VolumeControlScreenState extends State<VolumeControlScreen> {
  double _volume = 50.0;
  bool _isNightMode = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Dois tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Music Player'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.volume_up),
                text: 'Controle de Volume',
              ),
              Tab(
                icon: Icon(Icons.music_note),
                text: 'Player',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Conteúdo da primeira aba (Controle de Volume)
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Volume: ${_volume.toStringAsFixed(0)}',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  SizedBox(height: 20.0),
                  Slider(
                    value: _volume,
                    min: 0.0,
                    max: 100.0,
                    onChanged: (newValue) {
                      setState(() {
                        _volume = newValue;
                      });
                    },
                  ),
                  SizedBox(height: 20.0)
                ],
              ),
            ),
            // Conteúdo da segunda aba (Player)
            PlayerWidget(),
          ],
        ),
      ),
    );
  }
}

class PlayerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Agora tu virou ex',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.skip_previous),
                onPressed: () {
                  // Lógica para retroceder para a música anterior
                },
              ),
              IconButton(
                icon: Icon(Icons.play_arrow),
                onPressed: () {
                  // Lógica para reproduzir a música
                },
              ),
              IconButton(
                icon: Icon(Icons.pause),
                onPressed: () {
                  // Lógica para pausar a música
                },
              ),
              IconButton(
                icon: Icon(Icons.skip_next),
                onPressed: () {
                  // Lógica para avançar para a próxima música
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}