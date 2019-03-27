import 'package:flutter/material.dart';

class ScorePage extends MaterialPageRoute<Null> {
  ScorePage() : super(builder: (BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScoreBoard"),
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
        child: Text("Scoreboard"),
      ),
    );
  });
}