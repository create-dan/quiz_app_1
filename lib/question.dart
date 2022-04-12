// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}
