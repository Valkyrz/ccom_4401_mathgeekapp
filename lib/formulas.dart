import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

class FormulasPage extends MaterialPageRoute<Null> {
  FormulasPage() : super(builder: (BuildContext ctx) {

    String teX = Uri.encodeFull(firstFormula);

    return Scaffold(
      appBar: AppBar(
        title: Text("Display Formula"),
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
        body: Column(
          children: [
            Container(
              child: TeXView(
                teXHTML: teX,
              ),
              height: 100,
              width: 420,
            ),
          ],
        )
    );
  });
}

//project plan update or work on it
//profiler flutter and the architecture stuff
//en pause y cerrada (last to 0 en este ultimo) debugging enabled(how to remove)
//need to pull formulas from a file following this format filters!
String firstFormula = r"""
  <p>
    $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}$$
  </p>
  """;
