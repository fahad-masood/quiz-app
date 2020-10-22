import 'package:flutter/material.dart';

class Answers extends StatelessWidget {

  final Function selectedAnswer;

  final String answerDetails;

  Answers(this.selectedAnswer, this.answerDetails);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: RaisedButton(
        child: Text(answerDetails),
        onPressed: selectedAnswer,
      ),
    );
  }
}
