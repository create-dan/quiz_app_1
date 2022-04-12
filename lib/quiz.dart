// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:udemy_quiz_app/question.dart';

import 'answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(
      {Key? key,
      required this.questions,
      required this.answerQuestion,
      required this.questionIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Question(questions[questionIndex]["questionText"] as String),
        ),
        SizedBox(
          height: 20,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              selectHandler: () => answerQuestion(answer['score']),
              answerText: answer['text'] as String);
        }).toList()
      ],
    );
  }
}
