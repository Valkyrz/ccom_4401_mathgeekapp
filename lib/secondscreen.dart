import 'package:flutter/material.dart';
import 'quiz.dart';

class MathQuiz extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MathQuizState();
  }
}

class MathQuizState extends State<MathQuiz>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
        backgroundColor: Colors.cyan[100],
      ),

      body: new Container(
        margin: const EdgeInsets.all(15.0),
        child: new Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new MaterialButton(
                height: 50.0,
                color: Colors.cyan[100],
                onPressed: startQuiz, //calls startQuiz method
                child: new Text(" Start Quiz",
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),)
            )
          ],
        ),
      ),
    );
  }

  void startQuiz(){
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> Quiz()));
    });
  }
}

