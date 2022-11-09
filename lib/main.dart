import 'package:flutter/material.dart';
import 'package:quizapp/home.dart';

void main() {
  runApp( MyApp() );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: HomePage(),
      debugShowCheckedModeBanner: false,

    );
  }
}