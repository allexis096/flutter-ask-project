import 'package:ask_project/quiz.dart';
import 'package:ask_project/result.dart';
import 'package:flutter/material.dart';

main() {
  runApp(AskProject());
}

class _AskProjectState extends State<AskProject> {
  int _selectedQuestion = 0;
  int _totalPoint = 0;

  void _answer(int point) {
    if (hasSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
        _totalPoint += point;
      });
    }
  }

  void _restartQuiz() {
    setState(() {
      _selectedQuestion = 0;
      _totalPoint = 0;
    });
  }

  final List<Map> _questions = const [
    {
      'text': 'Qual é a sua cor favorita?',
      'answers': [
        {'text': 'preto', 'points': 10},
        {'text': 'vermelho', 'points': 5},
        {'text': 'verde', 'points': 3},
        {'text': 'branco', 'points': 1}
      ],
    },
    {
      'text': 'Qual é o seu animal favorito?',
      'answers': [
        {'text': 'coelho', 'points': 10},
        {'text': 'cobra', 'points': 5},
        {'text': 'elefante', 'points': 3},
        {'text': 'leão', 'points': 1},
      ],
    },
    {
      'text': 'Qual é o seu instrutor favorito?',
      'answers': [
        {'text': 'maria', 'points': 10},
        {'text': 'joão', 'points': 5},
        {'text': 'leo', 'points': 3},
        {'text': 'pedro', 'points': 1},
      ],
    },
  ];

  bool get hasSelectedQuestion {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          centerTitle: true,
        ),
        body: hasSelectedQuestion
            ? Quiz(
                questions: _questions,
                selectedQuestion: _selectedQuestion,
                answer: _answer,
              )
            : Result(_totalPoint, _restartQuiz),
      ),
    );
  }
}

class AskProject extends StatefulWidget {
  _AskProjectState createState() {
    return _AskProjectState();
  }
}
