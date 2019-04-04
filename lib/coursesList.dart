import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class CoursesPage extends MaterialPageRoute<Null> {
  CoursesPage() : super(builder: (BuildContext ctx) {
    ChapterListPage(title: "Chapters",);
  });
}

class ChapterListPage extends StatefulWidget{
  ChapterListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ChapterListPage createState() => new _ChapterListPage();
}


class _ChapterListPage extends State<ChapterListPage>{

  Future<List<String>> _getChapters() async{
    var data = await rootBundle.loadString('assets/coursesList.txt');
    String text = data;
    List<String> items = (text.split("\n"));

    return items;
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
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
                        title: Text(snapshot.data[index]),
                        onTap: (){
                          Navigator.push(context,
                              new MaterialPageRoute(builder: (context) => ChapterPage(snapshot.data[index]))
                          );
                        }
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

class ChapterPage extends StatelessWidget{

  final String chapter;

  ChapterPage(this.chapter);
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title: Text(chapter)
        )
    );
  }
}