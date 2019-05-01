import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

import 'package:flutter/foundation.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

class FormulasPage extends StatefulWidget {
  FormulasPage();

  @override
  _FormulasPage createState() => new _FormulasPage();
}

class _FormulasPage extends State<FormulasPage> {

  Future<String> _getFormula() async{
    var data = await rootBundle.loadString('assets/preCal1Formulas.txt');
    String text = data;

    return text;
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: new Text("PreCalculo Formulas",style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.cyan[100],
      ),
      body: Container(
          child: FutureBuilder(
            future: _getFormula(),
            builder: (BuildContext context, AsyncSnapshot snapshot){
              if(snapshot.data == null){
                return Container(
                    child: Center(
                        child: Text("Loading Formulas...")
                    )
                );
              } else {
                String teX = Uri.encodeFull(snapshot.data);
                return Container(
                  child: TeXView(
                    teXHTML: teX,
                  ),
                );
              }
            },
          )
      ),
    );
  }
}
