// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // Answer(this.selectHandler, this.answerText, {Key? key}) : super(key: key);

  final VoidCallback selectHandler;
  final String answerText;

  const Answer(
      {Key? key, required this.selectHandler, required this.answerText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        child: RaisedButton(
          textColor: Colors.white,
          color: Colors.pink,
          child: Text(answerText),
          onPressed: selectHandler,
        ),
      ),
    );
  }
}
