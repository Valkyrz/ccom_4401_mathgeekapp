import 'package:flutter/material.dart';

var finalScore = 0;
var questionNumber = 0;
var quiz = new MathQuiz();

class MathQuiz{
  var questions = [
    "f(x)= 4x^2 - 11x - 3",
    "Solve the equation: 2x^2 - x - 3= 0",
    "Rewrite without using symbols for absolute value: |4 - 9|",
    "500+698",
  ];
  var choices = [
    ["3, 1/4", "2/3", "5", "1, 3/5"],
    ["2/3, 2", "3", "3/2, -1", "0, 5"],
    ["0", "5", "-5", "|5|"],
    ["1198", "1100", "1150", "15x^4 - 1026"]
  ];
  var correctChoice = [
    "3, 1/4", "2/3, 2", "5", "1198"
  ];

}

class Quiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuizState();
  }
}

class QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          body: Container(
            margin: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(20.0)),

                Container(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      Text(
                        "Question ${questionNumber + 1} of ${quiz.questions
                            .length}",
                        style: TextStyle(
                            fontSize: 22.0
                        ),),

                      Text("Score: $finalScore",
                        style: TextStyle(
                            fontSize: 22.0
                        ),)
                    ],
                  ),
                ),

                Padding(padding: EdgeInsets.all(10.0)),

                Text(quiz.questions[questionNumber],
                  style: TextStyle(
                    fontSize: 20.0,
                  ),),

                Padding(padding: EdgeInsets.all(10.0)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    //button 1
                    MaterialButton(
                      minWidth: 120.0,
                      color: Colors.cyan[100],
                      onPressed: () {
                        if (quiz.choices[questionNumber][0] ==
                            quiz.correctChoice[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: Text(quiz.choices[questionNumber][0],
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),

                    //button 2
                    MaterialButton(
                      minWidth: 120.0,
                      color: Colors.cyan[100],
                      onPressed: () {
                        if (quiz.choices[questionNumber][1] ==
                            quiz.correctChoice[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: Text(quiz.choices[questionNumber][1],
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),

                  ],
                ),

                Padding(padding: EdgeInsets.all(10.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    //button 3
                    MaterialButton(
                      minWidth: 120.0,
                      color: Colors.cyan[100],
                      onPressed: () {
                        if (quiz.choices[questionNumber][2] ==
                            quiz.correctChoice[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: Text(quiz.choices[questionNumber][2],
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),

                    //button 4
                    MaterialButton(
                      minWidth: 120.0,
                      color: Colors.cyan[100],
                      onPressed: () {
                        if (quiz.choices[questionNumber][3] ==
                            quiz.correctChoice[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: Text(quiz.choices[questionNumber][3],
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white
                        ),),
                    ),

                  ],
                ),

                Padding(padding: EdgeInsets.all(15.0)),

                Container(
                    alignment: Alignment.bottomCenter,
                    child: MaterialButton(
                        minWidth: 240.0,
                        height: 30.0,
                        color: Colors.grey[200],
                        onPressed: resetQuiz,
                        child: Text("Quit",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white
                          ),)
                    )
                ),
              ],
            ),
          ),
        )
    );
  }

  void resetQuiz() {
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        Navigator.push(context, new MaterialPageRoute(
            builder: (context) => Summary(score: finalScore)));
      } else {
        questionNumber++;
      }
    });
  }

} //QuizState

class Summary extends StatelessWidget {
  final int score;

  Summary({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(

        body: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Text("Final Score: $score",
                style: new TextStyle(
                    fontSize: 35.0
                ),),

              new Padding(padding: EdgeInsets.all(30.0)),

              new MaterialButton(
                color: Colors.grey[200],
                onPressed: () {
                  questionNumber = 0;
                  finalScore = 0;
                  Navigator.pop(context);
                },
                child: new Text("Reset Quiz",
                  style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                  ),),)
            ],
          ),
        ),
      ),
    );
  }

}