import 'package:flutter/material.dart';
import 'answer_button.dart';
import 'question_text.dart';
import 'questions.dart';
import 'true_false.dart';
import 'correct_wrong_overlay.dart';

import 'final_score.dart';

class TrueFalsePage extends StatefulWidget{
   final String chapterPage;

   TrueFalsePage(this.chapterPage);

  @override
  State createState() => new TrueFalseState();
}

class TrueFalseState extends State<TrueFalsePage>{

  Question currentQuestion;
  TrueFalse quiz = new TrueFalse([
    new Question("Are Logarithmic functions the inverse of exponential?", true),
    new Question("Is the value of log0.7 between 0 and 1?", false),
    new Question("Every increasing sequence is always bounded below", true),
    new Question("Every sequence is continuous function", true),
    new Question("The graph a quadratic equation intercepts Y-Axis?", true),
    new Question("If 2 lines are parallel their slopes are different?", false),
  ]);
  String questionText;
  int questionNumber;
  bool isCorrect;

  bool overlayVisibility = false;

  @override
  void initState(){
    super.initState();
    currentQuestion = quiz.nextQuestion;
    questionText = currentQuestion.question;
    questionNumber = quiz.questionNumber;
  }

  void handleAnswer(bool answer){
    isCorrect = (currentQuestion.answer == answer);
    quiz.answer(isCorrect);
    this.setState(() {
      overlayVisibility = true;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
          title: Text("True or False", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.cyan[100]),
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new AnswerButton(true, () => handleAnswer(true)),
                  new QuestionText(questionText, questionNumber),
                  new AnswerButton(false, () => handleAnswer(false))
                ],
              ),
              overlayVisibility == true ? new CorrectWrongOverlay(
                  isCorrect,
                      (){
                    if(quiz.length == questionNumber) {
                      Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (BuildContext context) => new FinalScorePage(widget.chapterPage, quiz.score, quiz.length)), (Route route) => route == null);
                      return;
                    }

                    currentQuestion = quiz.nextQuestion;
                    this.setState((){
                      overlayVisibility = false;
                      questionText = currentQuestion.question;
                      questionNumber = quiz.questionNumber;
                    });
                  }
              ): new Container(),
            ],
          )
    );
  }
}