import 'package:flutter/material.dart';
import 'main.dart';
class Result extends StatelessWidget {
  final Function resetApp;
  final int totalScore;
  Result(this.resetApp,this.totalScore);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Done!",
          style: TextStyle(
              color: black,
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),
        ),
        FlatButton(
            onPressed: resetApp,
            child: Text(
              "Restart The App?",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.bold ),
              ),
            ),
        Text(
          "Score = $totalScore",
          style: TextStyle(
              color: black,
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}
