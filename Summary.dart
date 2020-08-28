import 'package:flutter/material.dart';

class Summary extends StatelessWidget {

  final int wrong;
  final int correct;
  final int total;

  Summary({this.correct,this.total,this.wrong});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Result",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red[700],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget> [
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 110.0),
            decoration: BoxDecoration(
                color: Colors.indigo[800],
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Text(
              "Total Questions: $total",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 70.0),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Text(
              "No. of correct questions: $correct",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 70.0),
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Text(
              "No. of Wrong Questions: $wrong",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white
              ),
            ),
          )
        ],
      ),
    );
  }
}
