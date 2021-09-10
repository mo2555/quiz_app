import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';
class TrueAnswer extends StatelessWidget {
final List question;
final int questionIndex;

  TrueAnswer(this.question, this.questionIndex,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Answer"),
      ),
      body: ListView(
        children: [
          Question(question[questionIndex]['question']),
          ...question[questionIndex]['answer'].map((answer){
            return Answer(answer['text'].toString(),
                  (){

              },answer['bool']?Colors.green:Colors.red,
            );
          }),
        ],
      ),
    );
  }
}
//...[1,2,3]