import 'package:flutter/material.dart';
import 'package:quizapp/answerWidget.dart';


class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;

  final int questionIndex;

  final  Function answerQuestion;


  Quiz(this.questions,this.questionIndex,this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return AnswerWidget(() => answerQuestion(answer['score']),(answer['text'] as String));
        }).toList()
      ],
    );
  }
}