import 'package:ask_project/answer.dart';
import 'package:ask_project/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map> questions;
  final int selectedQuestion;
  final void Function(int) answer;

  bool get hasSelectedQuestion {
    return selectedQuestion < questions.length;
  }

  Quiz({
    required this.questions,
    required this.selectedQuestion,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    List<Map> answers =
        hasSelectedQuestion ? questions[selectedQuestion]['answers'] : null;

    return Column(
      children: [
        Question(questions[selectedQuestion]['text']),
        ...answers
            .map((resp) => Answer(resp['text'], () => answer(resp['points'])))
            .toList(),
      ],
    );
  }
}
