import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'quiz.dart';
import 'result.dart';
import 'answer.dart';
main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State createState() => _MyAppState();
}
Color black = Colors.black;
Color white = Colors.white;
Color btnColor1 = Colors.blue;
Color blue = Colors.blue;
Color red = Colors.red;
Color green = Colors.green;
class _MyAppState extends State<MyApp> {
Widget bodyWidget(){
  if(questionIndex<question.length) {
    return Quiz(questionIndex, question, questionIndexP);
  }
  else
    {
      return Result(reSet, totalScore);
    }
}
  bool isSWitched = true;
  String strFlatButton = "Dark Mood";
  List <Map<String,Object>>question =[
    {
      'question':"What\'s your fav sport?",
    'answer':[
      {'text':'FootBall','score':0,'bool':false,},
      {'text':'BasketBall','score':10,'bool':true,},
      {'text':'Tennis','score':0,'bool':false,},
      {'text':'VolleyBall','score':0,'bool':false,}
      ]
    },
    {
      'question':"What\'s your fav Person?",
      'answer':[
        {'text':'F1','score':10,'bool':true,},
        {'text':'F2','score':0,'bool':false,},
        {'text':'F3','score':0,'bool':false,},
        {'text':'F4','score':0,'bool':false,}
      ]
    },
    {
      'question':"What\'s your fav drink?",
      'answer':[
        {'text':'Tea','score':10,'bool':true,},
        {'text':'Coffee','score':0,'bool':false,},
        {'text':'Coca','score':0,'bool':false,},
        {'text':'Sprite','score':0,'bool':false,}
      ]
    },
    {
      'question':"What\'s your fav color?",
      'answer':[
        {'text':'Black','score':10,'bool':true,},
        {'text':'Red','score':0,'bool':false,},
        {'text':'Blue','score':0,'bool':false,},
        {'text':'Green','score':0,'bool':false,}
      ]
    }
  ];
  int questionIndex = 0;
  int totalScore =0;
  int num0 = 0;
  int num1 = 0;
  int num2 = 0;
  int num3 = 0;
  reSet(){
    setState(() {
      num0=0;
      num1=0;
      num2=0;
      num3=0;
      questionIndex=0;
      totalScore=0;
    });
  }
  questionIndexP(int score){
    if(questionIndex==0)
      num0=score;
    else if(questionIndex==1)
      num1=score;
    else if(questionIndex==2)
      num2=score;
    else if(questionIndex==3)
      num3=score;
    totalScore+=score;
    setState(() {
      questionIndex++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("Quiz App",style: TextStyle(color: white),),
          /*actions: [
            TextButton(onPressed: (){
              setState(() {
                if(questionIndex==1)
                  totalScore-=num0;
                else if(questionIndex==2)
                  totalScore-=num1;
                else if(questionIndex==3)
                  totalScore-=num2;
                else if(questionIndex==4)
                  totalScore-=num3;
                  if(questionIndex>0)
                    questionIndex--;
              });
            },
              child:Icon(Icons.arrow_back_sharp,color: white,),
            )
            ,
          ],*/
        ),
        body: Container(
          alignment: Alignment.center,
          color: white,
          child:bodyWidget(),

        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: ()
          {
            setState(() {
              if(isSWitched){
                black = Colors.white;
                white = Colors.black;
                isSWitched=!isSWitched;
                strFlatButton="White Mood";
              }else{
                white = Colors.white;
                black = Colors.black;
                isSWitched=!isSWitched;
                strFlatButton="Dark Mood";
              }
            });
          },
  backgroundColor: black,
  label : Text(strFlatButton,
  style: TextStyle(color: white),
  ),
        ),
      )
    );
  }
}
