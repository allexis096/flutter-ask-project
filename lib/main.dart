import 'package:ask_project/answer.dart';
import 'package:ask_project/question.dart';
import 'package:flutter/material.dart';

main() {
  runApp(AskProject());
}

class _AskProjectState extends State<AskProject> {
  int _selectedQuestion = 0;

  void _answer() {
    setState(() {
      _selectedQuestion++;
    });
    print(_selectedQuestion);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> questions = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(questions[_selectedQuestion]),
            Answer('Resposta 1', _answer),
            Answer('Resposta 2', _answer),
            Answer('Resposta 3', _answer),
          ],
        ),
      ),
    );
  }
}

class AskProject extends StatefulWidget {
  _AskProjectState createState() {
    return _AskProjectState();
  }
}
