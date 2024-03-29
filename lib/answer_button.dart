import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{

  final bool _answer;
  final VoidCallback _onTap;

  AnswerButton(this._answer, this._onTap);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: new Material(
        color: _answer == true ? Colors.blueAccent : Colors.redAccent,
        child: new InkWell(
          onTap: () => _onTap(),
          child: new Center(
            child: new Container(
              decoration: new BoxDecoration(
                  border: new Border.all(color: Colors.black, width: 5.0)
              ),
              padding: new EdgeInsets.all(20.0),
              child: Text(_answer == true ? "True" : "False",
                style: TextStyle(color: Colors.black, fontSize: 40.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
            ),
          ),
        ),
      ),
    );
  }
}