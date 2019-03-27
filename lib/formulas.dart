import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

class FormulasPage extends MaterialPageRoute<Null> {
  FormulasPage() : super(builder: (BuildContext ctx) {
    String teX = Uri.encodeFull(firstFormula);
    return Scaffold(
      appBar: AppBar(
        title: Text("ScoreBoard"),
        backgroundColor: Theme.of(ctx).accentColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_left),
            onPressed: (){
              Navigator.pop(ctx);
            },
          )
        ],
      ),
      body: TeXView(
        teXHTML: teX,
      ),
    );
    //return FlutterTeX();
  });
}

//need to pull formulas from a file following this format
String firstFormula = r"""
  <p>
    $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}$$
  </p>
  """;
