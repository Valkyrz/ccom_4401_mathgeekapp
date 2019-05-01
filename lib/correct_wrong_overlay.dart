import 'package:flutter/material.dart';

class CorrectWrongOverlay extends StatefulWidget{

  final bool _isCorrect;
  final VoidCallback _onTap;

  CorrectWrongOverlay(this._isCorrect, this._onTap);


  @override
  State createState() => new CorrectWrongOverlayState();

}

class CorrectWrongOverlayState extends State<CorrectWrongOverlay>{
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.black54,
      child: InkWell(
        onTap: () => widget._onTap(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.cyan[100],
                  shape: BoxShape.circle
              ),
              child: Icon(widget._isCorrect == true ? Icons.done : Icons.clear, size: 80.0,),
            ),
            Padding(
              padding: new EdgeInsets.only(bottom: 20.0),
            ),
            Text(widget._isCorrect == true ? "Correct!" : "Wrong!", style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}