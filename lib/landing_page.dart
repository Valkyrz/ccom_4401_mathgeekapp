import 'package:flutter/material.dart';
import 'true_false_page.dart';


class LandingPage extends StatelessWidget{

  final String chapterName;

  LandingPage(this.chapterName);

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
              child: new InkWell(
                onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new TrueFalsePage(chapterName))),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text("True or False", style: TextStyle(color: Colors.black, fontSize: 50.0, fontWeight: FontWeight.bold),),
                    new Text("Tap to Start!", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            )
        )
    );
  }
}