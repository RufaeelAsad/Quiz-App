import 'package:flutter/material.dart';
import 'package:quizapp/answerWidget.dart';
import 'package:quizapp/questionWidget.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int questionIndex = 0;

  var questions = [
    {
      'questionText': 'What\s your Favourite Color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\s your Favourite Animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\s your Favourite Instructor?',
      'answers': ['Sir Bilal', 'Mam Sana', 'Mam Sadaf', 'Sir Faheem'],
    },
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
        body: questionIndex < questions.length
            ? Column(children: [
                QuestionWidget(
                    questions[questionIndex]['questionText'] as String),
                Quiz(questions, questionIndex, answerQuestion)
              ])
            : Result()
    );
  }
}
