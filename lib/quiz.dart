import 'dart:io';

import 'package:flutter/material.dart';
import 'package:quizapp_v2/trueAnswer.dart';
import 'answer.dart';
import 'question.dart';
class Quiz extends StatefulWidget{
  final List question;
  final int questionIndex;
  final Function questionIndexP;

  Quiz(this.questionIndex,this.question,this.questionIndexP);

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Color ch1;
  Color ch2;
  Color ch3;
  Color ch4;
  @override
  void initState() {
    ch1 = Colors.blue;
    ch2 = Colors.blue;
    ch3 = Colors.blue;
    ch4 = Colors.blue;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        Question(widget.question[widget.questionIndex]['question']),
        ...widget.question[widget.questionIndex]['answer'].map((answer){
          return Answer(answer['text'].toString(),
                (){
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_){
                    return TrueAnswer(widget.question,widget.questionIndex,);
                  })
              );
              widget.questionIndexP(answer['score'],
              );
            },Colors.blue,
          );
        })
      ],
    );
  }
}