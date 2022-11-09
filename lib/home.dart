import 'package:flutter/material.dart';
import 'package:quizapp/answerWidget.dart';
import 'package:quizapp/questionWidget.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
   int questionIndex = 0;

  var questions = [
    'What\'s your Favourite Color',
    'What\'s your Favourite Animal'
  ];

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: Column(
        children: [
          QuestionWidget(questions[questionIndex]),
          AnswerWidget(answerQuestion)
        ],
      ),
    );
  }
}
