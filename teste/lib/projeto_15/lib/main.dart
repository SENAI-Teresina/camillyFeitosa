import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Questionário de Múltipla Escolha',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Quiz(),
    );
  }
}

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int _questionIndex = 0;
  List<Map<String, Object>> _questions = [
    {
      'questionText': 'Qual é a capital da França?',
      'answers': [
        {'text': 'Londres', 'score': 10},
        {'text': 'Madrid', 'score': 10},
        {'text': 'Paris', 'score': 10},
        {'text': 'Roma', 'score': 10},
      ],
    },
    {
      'questionText': 'Quem escreveu "Romeu e Julieta"?',
      'answers': [
        {'text': 'William Shakespeare', 'score': 10},
        {'text': 'Charles Dickens', 'score': 10},
        {'text': 'Jane Austen', 'score': 10},
        {'text': 'Mark Twain', 'score': 10},
      ],
    },
    {
      'questionText': 'Qual é a cor do céu em um dia claro?',
      'answers': [
        {'text': 'Verde', 'score': 10},
        {'text': 'Vermelho', 'score': 10},
        {'text': 'Azul', 'score': 10},
        {'text': 'Amarelo', 'score': 10},
      ],
    },
  ];
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questionário de Múltipla Escolha'),
      ),
      body: _questionIndex < _questions.length
          ? QuizQuestion(
              questionText: _questions[_questionIndex]['questionText'] as String,
              answers: _questions[_questionIndex]['answers'] as List<Map<String, Object>>,
              answerQuestion: _answerQuestion,
            )
          : QuizResult(_totalScore, _resetQuiz),
    );
  }
}

class QuizQuestion extends StatelessWidget {
  final String questionText;
  final List<Map<String, Object>> answers;
  final Function(int) answerQuestion;

  QuizQuestion({
    required this.questionText,
    required this.answers,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            questionText,
            style: TextStyle(fontSize: 20),
          ),
        ),
        ...answers.map((answer) {
          return RadioListTile<int>(
            title: Text(answer['text'] as String),
            value: answer['score'] as int,
            groupValue: 0,
            onChanged: (int? value) {
              if (value != null) {
                answerQuestion(value);
              }
            },
          );
        }).toList(),
      ],
    );
  }
}

class QuizResult extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  QuizResult(this.totalScore, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Resultado: $totalScore pontos',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              resetQuiz();
            },
            child: Text('Reiniciar Quiz'),
          ),
        ],
      ),
    );
  }
}
