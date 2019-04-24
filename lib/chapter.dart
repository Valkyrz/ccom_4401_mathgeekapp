import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'puzzle.dart';
import 'formulas.dart';

//import 'quiz.dart';
import 'scoreboard.dart';
import 'secondscreen.dart';

class ChapterPage extends StatefulWidget {
  final String chapter;

  ChapterPage(this.chapter);

  @override
  _ChapterPage createState() => new _ChapterPage();
}

class _ChapterPage extends State<ChapterPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.chapter, style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.cyan[100]),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: <Widget>[
          Material(
            color: Colors.cyan[100],
            elevation: 14.0,
            shadowColor: Color(0xFF74B9FF),
            borderRadius: BorderRadius.circular(24.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MathQuiz()));
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Quiz",
                              style:TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              ),),),
                          Material(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(24.0),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Icon(Icons.assessment,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Material(
            color: Colors.cyan[100],
            elevation: 14.0,
            shadowColor: Color(0xFF74B9FF),
            borderRadius: BorderRadius.circular(24.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, PuzzlePage());
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Puzzle",
                              style:TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              ),),),
                          Material(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(24.0),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Icon(Icons.assessment,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Material(
            color: Colors.cyan[100],
            elevation: 14.0,
            shadowColor: Color(0xFF74B9FF),
            borderRadius: BorderRadius.circular(24.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScorePage()));
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("ScoreBoard",
                              style:TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              ),),),
                          Material(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(24.0),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Icon(Icons.toc,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Material(
            color: Colors.cyan[100],
            elevation: 14.0,
            shadowColor: Color(0xFF74B9FF),
            borderRadius: BorderRadius.circular(24.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => FormulasPage()));
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Formulas",
                              style:TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              ),),),
                          Material(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(24.0),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Icon(Icons.broken_image,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 150.0),
        ],
      ),
    );

    /*Scaffold(
      appBar: AppBar(
        title: Text("Chapter"),
        backgroundColor: Colors.cyan[100],
      ),
      body: Center(
        child: new Column(

          children: <Widget>[

            new RaisedButton(
              onPressed: () {
                Navigator.push(context, PuzzlePage());
              },
              child: Text("Puzzle"),
            ),


            new RaisedButton(
              onPressed: () {
                //Navigator.push(ctx, MathQuiz());
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MathQuiz()));
              },
              child: Text("Quiz"),
            ),

            new RaisedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => ScorePage()));
              },
              child: Text("ScoreBoard"),
            ),


          ],
        ),
      ),
    );*/
  }
}
