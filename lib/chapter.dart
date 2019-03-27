import 'package:flutter/material.dart';
import 'puzzle.dart';
import 'quiz.dart';
import 'scoreboard.dart';

class ChapterPage extends MaterialPageRoute<Null> {
  ChapterPage() : super(builder: (BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chosen Chapter"),
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
        child: new Column(

          children: <Widget>[

            new RaisedButton(
              onPressed: () {
                Navigator.push(ctx, PuzzlePage());
              },
              child: Text("Puzzle"),
            ),


            new RaisedButton(
              onPressed: () {
                Navigator.push(ctx, QuizPage());
              },
              child: Text("Quiz"),
            ),

            new RaisedButton(
              onPressed: () {
                Navigator.push(ctx, ScorePage());
              },
              child: Text("ScoreBoard"),
            ),


          ],
        ),
      ),
    );
  });
}