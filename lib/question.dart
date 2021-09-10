import 'package:flutter/material.dart';
import 'main.dart';
class Question extends StatelessWidget {
  final String question;
  Question(this.question);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            question,
          style: TextStyle(
            color: black,
            fontSize: 30,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10,)
      ],
    );
  }
}
