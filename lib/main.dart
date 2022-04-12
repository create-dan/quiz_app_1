// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:udemy_quiz_app/result.dart';

import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var aBool = true;
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      "questionText": "What's your favorite color",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "White", "score": 8},
        {"text": "Yellow", "score": 6},
        {"text": "Red", "score": 4},
      ],
    },
    {
      "questionText": "What's your favorite team",
      "answers": [
        {"text": "mumbai", "score": 10},
        {"text": "channai", "score": 8},
        {"text": "pune", "score": 6},
        {"text": "delhi", "score": 4},
      ],
    },
    {
      "questionText": "What's your favorite time",
      "answers": [
        {"text": "morning", "score": 10},
        {"text": "afternoon", "score": 8},
        {"text": "night", "score": 6},
        {"text": "all", "score": 4},
      ],
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print("We have more questions");
    } else {
      print("NO more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    // question list

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz app"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
