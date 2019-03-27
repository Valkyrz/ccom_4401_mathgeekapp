import 'package:flutter/material.dart';
import 'chapter.dart';
import'scoreboard.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: themeData,
  ));
}

final ThemeData themeData = ThemeData(
  canvasColor: Colors.lightBlue,
  accentColor: Colors.blueGrey,
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        backgroundColor: Theme.of(ctx).accentColor,
      ),
      body: Center(
        child: new Column(
          children: <Widget>[
            new RaisedButton(
              onPressed: () {
                Navigator.push(ctx, ChapterPage());
              },
              child: Text("Chapter"),
            ),

            new RaisedButton(
              onPressed: () {
                Navigator.push(ctx, ScorePage());
              },
              child: Text("ScoreBoard"),
            ),
          ],
        )
      ),
    );
  }
}
