import 'package:flutter/material.dart';


class AnswerWidget extends StatelessWidget {

  final void Function()? answerQuestion;

  final String? text;

  AnswerWidget(this.answerQuestion,this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: answerQuestion,
          child: Text(text!)
      ),
    );
  }
}