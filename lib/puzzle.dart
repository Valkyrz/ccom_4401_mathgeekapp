import 'package:flutter/material.dart';

class PuzzlePage extends MaterialPageRoute<Null> {
  PuzzlePage() : super(builder: (BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Puzzle Screen"),
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
          child: Text("Puzzle"),
      ),
    );
  });
}