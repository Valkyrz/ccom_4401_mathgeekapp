import 'package:flutter/material.dart';
import 'coursesList.dart';
import'scoreboard.dart';
import 'formulas.dart';

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
                Navigator.push(ctx, ScorePage());
              },
              child: Text("Courses"),
            ),

            new RaisedButton(
              onPressed: () {
                Navigator.push(ctx, ScorePage());
              },
              child: Text("ScoreBoard"),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.push(ctx, FormulasPage());
              },
              child: Text("Formulas"),
            ),
          ],
        )
      ),
    );
  }
}

