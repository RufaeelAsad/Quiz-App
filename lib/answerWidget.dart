import 'package:flutter/material.dart';


class AnswerWidget extends StatelessWidget {

  final void Function()? answerQuestion;

  AnswerWidget(this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: answerQuestion,
        child: Text('Answer 1')
    );
  }
}