import 'package:flutter/material.dart';
import 'package:quizapp/answerWidget.dart';


class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;

  final int questionIndex;

  final void Function()? answerQuestion;


  Quiz(this.questions,this.questionIndex,this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...(questions[questionIndex]['answers'] as List<String>).map((e) {
          return AnswerWidget(answerQuestion,e);
        }).toList()
      ],
    );
  }
}