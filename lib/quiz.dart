import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget
{

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
})

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        Question(
          questions[_questionIndex]['questionText'] as String,
        ),
        ...(questions[_questionIndex]['answers'] as List<String>)
            .map((answer) {
          return Answer(_answerQuestion, answer);
        }).toList()
      ],
    ),
  }
}
}

