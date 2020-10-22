import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FinalScore extends StatelessWidget {
  final int finalScore;
  final Function restartQuiz;

  FinalScore(this.finalScore, this.restartQuiz);

  String get resultText {
    String resultText;
    if (finalScore == 100) {
      resultText = 'Congrats you\'ve got all the answers correct! Your score is 100 out of 100';
    } else if (finalScore == 90) {
      resultText = 'Quite Impressive! Your score is 90 out of 100';
    }else if (finalScore == 80) {
      resultText = 'Quite Impressive! Your score is 80 out of 100';
    }else if (finalScore == 70) {
      resultText = 'Quite Impressive! Your score is 70 out of 100';
    }else if (finalScore == 60) {
      resultText = 'Your performance is good but it can be improved. Your score is 60 out of 100';
    }else if (finalScore == 50) {
      resultText = 'Your performance can be improved. Your score is 50 out of 100';
    }else if (finalScore == 40){
      resultText = 'Oops! That\'s a bad score! Your score is 40 out of 100';
    }else if (finalScore == 30){
      resultText = 'Oops! That\'s a bad score! Your score is 30 out of 100';
    }else if (finalScore == 20){
      resultText = 'Oops! That\'s a bad score! Your score is 20 out of 100';
    }else if (finalScore == 10){
      resultText = 'Oops! That\'s a bad score! Your score is 10 out of 100';
    }else{
      resultText = 'Oops! You\'ve got all the answers wrong! Your score is 0 out of 100';
    }
    return resultText;
  }

  int get yourScore {
    return finalScore;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            child: Text(
              resultText,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
            padding: EdgeInsets.only(
              top: 180,
              left: 20,
              right: 20,
              bottom: 10,
            ),
          ),
        ),
        Center(
          child: RaisedButton(
            child: Text('Restart Quiz'),
            onPressed: restartQuiz,
          ),
        )
      ],
    );
  }
}
