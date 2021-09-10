import 'package:flutter/material.dart';
import 'main.dart';

class Answer extends StatefulWidget {
  final String answer;
  final Function onP;
  final Color ch;

  Answer(this.answer, this.onP, this.ch);
  @override
  _AnswerState createState() => _AnswerState();
}
class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: widget.onP,
        color: widget.ch,
        child: Text(
          widget.answer,
          style: TextStyle(color: white, fontSize: 20),
        ),
      ),
    );
  }
}
