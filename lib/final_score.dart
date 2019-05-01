import 'package:flutter/material.dart';
import 'landing_page.dart';
import 'chapter.dart';

class FinalScorePage extends StatelessWidget{

  final int score;
  final int totalQuestions;
  final String chapterPage;

  FinalScorePage(this.chapterPage,this.score, this.totalQuestions);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          title: Text("True or False", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.cyan[100]),
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text("Your Score: ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 50.0),),
                  new Text(score.toString() + "/" + totalQuestions.toString(), style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 50.0),),
                  new IconButton(icon: new Icon(Icons.home, size: 50.0,),
                    color: Colors.black,
                    iconSize: 50.0,
                    onPressed: () => Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new ChapterPage(chapterPage)), (Route route) => route == null),)
                ],
              ),
            )
          )
    );
  }
}