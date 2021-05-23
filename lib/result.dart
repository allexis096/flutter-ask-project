import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalPoint;
  final void Function() restartQuiz;

  Result(this.totalPoint, this.restartQuiz);

  String get phraseResult {
    if (totalPoint < 8) {
      return 'Parabéns!';
    } else if (totalPoint < 12) {
      return 'Você é bom!';
    } else if (totalPoint < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            phraseResult,
            style: TextStyle(fontSize: 28),
          ),
          TextButton(
            onPressed: restartQuiz,
            child: Text(
              'Reiniciar?',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
    );
  }
}
