import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class ScorePage extends StatefulWidget{
  ScorePage();

  @override
  _ScorePage createState() => new _ScorePage();
}


class _ScorePage extends State<ScorePage>{

  Future<List<String>> _getChapters() async{
    var data = await rootBundle.loadString('assets/scores.txt');
    String text = data;
    List<String> items = (text.split("\n"));

    return items;
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ScoreBoard", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.cyan[100],
      ),
      body: Container(
          child: FutureBuilder(
            future: _getChapters(),
            builder: (BuildContext context, AsyncSnapshot snapshot){
              if(snapshot.data == null){
                return Container(
                    child: Center(
                        child: Text("Loading Chapters...")
                    )
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        title: Text(snapshot.data[index],
                            style:TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            )),
                    );
                  },
                );
              }
            },
          )
      ),
    );
  }
}
