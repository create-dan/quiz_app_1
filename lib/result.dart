// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler, {Key? key}) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are ok";
    } else if (resultScore <= 12) {
      resultText = "you are double ok";
    } else if (resultScore <= 16) {
      resultText = "you are triple ok";
    } else {
      resultText = "bhai bhai bohat ok";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              "Restart Quiz !",
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
