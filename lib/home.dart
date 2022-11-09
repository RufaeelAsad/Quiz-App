import 'package:flutter/material.dart';
import 'package:quizapp/questionWidget.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int questionIndex = 0;
  int totalScore = 0;

  var questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  void answerQuestion(int score) {

    totalScore += score;

    setState(() {
      questionIndex += 1;
    });
  }

  void resetQuiz() {

    setState(() {
      totalScore = 0;
      questionIndex = 0;
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
            : Result(totalScore, resetQuiz)
    );
  }
}
