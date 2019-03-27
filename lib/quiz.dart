import 'package:flutter/material.dart';

class QuizPage extends MaterialPageRoute<Null> {
  QuizPage() : super(builder: (BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
        backgroundColor: Theme.of(ctx).accentColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_left),
            onPressed: (){
              Navigator.pop(ctx);
            },
          )
        ],
      ),
      body: Center(
        child: Text("Quiz"),
    ),
    );
  });
}