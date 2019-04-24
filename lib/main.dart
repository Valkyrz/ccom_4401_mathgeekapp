import 'package:flutter/material.dart';
import 'coursesList.dart';
import 'scoreboard.dart';
import 'formulaList.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    theme: _themeData,
  ));
}

final ThemeData _themeData = new ThemeData(
  canvasColor: Colors.grey[50],
  accentColor: Colors.cyan[100],
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MathGeek V0.7", style: TextStyle(color: Colors.black)),
        //backgroundColor: Theme.of(ctx).accentColor,
        backgroundColor: Colors.cyan[100],
      ),
      body: Center(
        child: Container(
          //decoration: new BoxDecoration(color: Colors.grey),
          child: ListView(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FittedBox(
                    child: Material(
                        color: Colors.cyan[100],
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(24.0),
                        shadowColor: Color(0x802196F3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 200,
                              height: 100,
                              child:
                                  ListTile(title: Text("Courses", style:TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                  )), onTap: () {
                                    Navigator.push(ctx,MaterialPageRoute(builder: (context) => ChapterListPage(title1: "Course List",)));
                                  }),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(24.0),
                                child: Image(
                                  fit: BoxFit.contain,
                                  alignment: Alignment.topRight,
                                  image: AssetImage("assets/Math.jpg"),
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FittedBox(
              child: Material(
                  color: Colors.cyan[100],
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 100,
                        child:
                        ListTile(title: Text("ScoreBoard", style:TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        )), onTap: () {
                          Navigator.push(ctx,MaterialPageRoute(builder: (context) => ScorePage()));
                        }),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: new BorderRadius.circular(24.0),
                          child: Image(
                            fit: BoxFit.contain,
                            alignment: Alignment.topRight,
                            image: AssetImage("assets/Math.jpg"),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FittedBox(
                    child: Material(
                        color: Colors.cyan[100],
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(24.0),
                        shadowColor: Color(0x802196F3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 200,
                              height: 100,
                              child:
                              ListTile(title: Text("Formulas", style:TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              )), onTap: () {
                                Navigator.push(ctx,MaterialPageRoute(builder: (context) => FormulaListPage()));
                              }),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(24.0),
                                child: Image(
                                  fit: BoxFit.contain,
                                  alignment: Alignment.topRight,
                                  image: AssetImage("assets/Math.jpg"),
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
