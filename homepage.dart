import 'package:flutter/material.dart';
import 'package:flutter_app1/QuizData.dart';
import 'package:flutter_app1/Summary.dart';

var wrong=0;
var finalscore=0;
var questionNumber=0;
var quiz = new Quiz();
var len=quiz.questions.length;

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {


  void update(){
    setState(() {
      if(questionNumber==len-1){
        Navigator.push(context, MaterialPageRoute(builder:
        (context) => Summary(correct: finalscore,total: len,wrong: wrong)
        ));
      }
      else{
        questionNumber++;
      }
    });
  }

  Color right=Colors.green;
  Color not_right=Colors.red;

  Widget choose(String k){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 20.0,
      ),
      child: MaterialButton(
        onPressed: (){
          if(quiz.answers[questionNumber]==quiz.options[questionNumber][k]){
           finalscore++;
          }
          else{
            ++wrong;
          };
          update();
        },
        child: Text(
          quiz.options[questionNumber][k],
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0
          ),
        ),
        minWidth: 210.0,
        height: 45.0,
        color: Colors.deepOrange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 15.0, 15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  quiz.questions[questionNumber],
                   style: TextStyle(
                     fontSize: 25.0
                   ),
                ),
              )
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    choose("a"),
                    choose("b"),
                    choose("c"),
                    choose("d"),
                  ],
                ),
              ),
            ),

          ],
        )
    );
  }
}
