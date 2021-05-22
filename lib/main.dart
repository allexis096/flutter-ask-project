import 'package:flutter/material.dart';

main() {
  runApp(AskProject());
}

class AskProjectState extends State<AskProject> {
  int selectedQuestion = 0;

  void answer() {
    setState(() {
      selectedQuestion++;
    });
    print(selectedQuestion);
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
            Text(questions[selectedQuestion]),
            ElevatedButton(onPressed: answer, child: Text('Resposta 1')),
            ElevatedButton(onPressed: answer, child: Text('Resposta 2')),
            ElevatedButton(onPressed: answer, child: Text('Resposta 3')),
          ],
        ),
      ),
    );
  }
}

class AskProject extends StatefulWidget {
  AskProjectState createState() {
    return AskProjectState();
  }
}
