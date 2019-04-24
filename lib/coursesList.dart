import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'chapter.dart';

class ChapterListPage extends StatefulWidget {
  ChapterListPage({Key key, this.title1}) : super(key: key);
  final String title1;
  final int colorB = 0xff5663a4;
  final int colorE = 0xff1c9cc7;

  @override
  _ChapterListPage createState() => new _ChapterListPage();
}

class _ChapterListPage extends State<ChapterListPage> {
  Future<List<String>> _getChapters() async {
    var data = await rootBundle.loadString('assets/coursesList.txt');
    String text = data;
    List<String> items = (text.split("\n"));

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title1, style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.cyan[100],
      ),
      body: Container(
          //decoration: new BoxDecoration(color: Colors.grey),
          child: FutureBuilder(
            future: _getChapters(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                    child: Center(child: Text("Loading Chapters...")));
              } else {
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                      color: Colors.cyan[100],
                      elevation: 14.0,
                      shadowColor: Color(0xFF74B9FF),
                      borderRadius: BorderRadius.circular(24.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChapterPage(
                                      snapshot.data[index])));
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
                                      child: Text(snapshot.data[index],
                                        style:TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                        ),),),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    );
                  },
                );
              }
            },
          )),
    );
  }
}