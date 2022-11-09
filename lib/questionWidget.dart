import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {

  final String? question;

  QuestionWidget(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(12.0),
      child: Text(question!,
        style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}