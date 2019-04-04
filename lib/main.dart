import 'package:flutter/material.dart';
import 'coursesList.dart';
import'scoreboard.dart';
import 'formulas.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    theme: themeData,
  ));
}

final ThemeData themeData = ThemeData(
  canvasColor: Colors.grey[50],
  accentColor: Colors.cyan[100],
);

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        //backgroundColor: Theme.of(ctx).accentColor,
        backgroundColor: Colors.cyan[100],
      ),
      body: Center(
        child: new Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              onPressed: () {
                //Navigator.push(ctx, ChapterListPage(title1: " "));
                Navigator.push(ctx, MaterialPageRoute(builder: (context)=> ChapterListPage(title1: "Course List",)));
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

