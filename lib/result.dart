import 'package:flutter/material.dart';


class Result extends StatelessWidget {

  final int totalScore;
  final void Function()? resetQuiz;


  Result(this.totalScore,this.resetQuiz);


  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (totalScore <= 16) {
      resultText = 'Pretty likeable!';
    } else {
      resultText = 'You are good';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
          ),
          ElevatedButton(
              onPressed: resetQuiz,
              child: Text("Restart Quiz")
          ),
        ],
      ),
    );
  }
}