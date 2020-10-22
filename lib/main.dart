import 'package:first_project/finalScore.dart';
import 'package:flutter/material.dart';

import './questions.dart';

import './answers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'question':
          'Q1. Which of the following is the capital of Arunachal Pradesh?',
      'answers': [
        {'text': 'A. Itanagar', 'score': 10},
        {'text': 'B. Dispur', 'score': 0},
        {'text': 'C. Imphal', 'score': 0},
        {'text': 'D. Panaji', 'score': 0},
      ],
    },
    {
      'question':
          'Q2. India is a federal union comprising twenty-nine states and how many union territories?',
      'answers': [
        {'text': 'A. 6', 'score': 0},
        {'text': 'B. 7', 'score': 10},
        {'text': 'C. 8', 'score': 0},
        {'text': 'D. 9', 'score': 0},
      ],
    },
    {
      'question': 'Q3. What are the major languages spoken in Andhra Pradesh?',
      'answers': [
        {'text': 'A. English and Telugu', 'score': 0},
        {'text': 'B. Telugu and Urdu', 'score': 10},
        {'text': 'C. Telugu and Kannada', 'score': 0},
        {'text': 'D. Kannada and Telugu', 'score': 0},
      ],
    },
    {
      'question': 'Q4. What is the state flower of Haryana?',
      'answers': [
        {'text': 'A. Lotus', 'score': 10},
        {'text': 'B. Rhododendron', 'score': 0},
        {'text': 'C. Golden Shower', 'score': 0},
        {'text': 'D. Rose', 'score': 0},
      ],
    },
    {
      'question':
          'Q5. Which of the following state is not located in the North?',
      'answers': [
        {'text': 'A. Jharkhand', 'score': 10},
        {'text': 'B. Jammu and Kashmir', 'score': 0},
        {'text': 'C. Himachal Pradesh', 'score': 0},
        {'text': 'D. Haryana', 'score': 0},
      ],
    },
    {
      'question': 'Q6. In which state is the main language Khasi?',
      'answers': [
        {'text': 'A. Mizoram', 'score': 0},
        {'text': 'B. Nagaland', 'score': 0},
        {'text': 'C. Meghalaya', 'score': 10},
        {'text': 'D. Tripura', 'score': 0},
      ],
    },
    {
      'question': 'Q7. Which is the largest coffee producing state of India?',
      'answers': [
        {'text': 'A. Kerala', 'score': 0},
        {'text': 'B. Tamil Nadu', 'score': 0},
        {'text': 'C. Karnataka', 'score': 10},
        {'text': 'D. Uttar Pradesh', 'score': 0},
      ],
    },
    {
      'question': 'Q8. Which state has the largest area?',
      'answers': [
        {'text': 'A. Maharashtra', 'score': 0},
        {'text': 'B. Madhya Pradesh', 'score': 0},
        {'text': 'C. Uttar Pradesh', 'score': 0},
        {'text': 'D. Rajasthan', 'score': 10},
      ],
    },
    {
      'question': 'Q9. Which state has the largest population?',
      'answers': [
        {'text': 'A. Uttar Pradesh', 'score': 10},
        {'text': 'B. Maharashtra', 'score': 0},
        {'text': 'C. Bihar', 'score': 0},
        {'text': 'D. Delhi', 'score': 0},
      ],
    },
    {
      'question': 'Q10. In what state is the Elephant Falls located?',
      'answers': [
        {'text': 'A. Mizoram', 'score': 0},
        {'text': 'B. Orissa', 'score': 0},
        {'text': 'C. Manipur', 'score': 0},
        {'text': 'D. Meghalaya', 'score': 10}
      ],
    },
  ];

  int _indexQuestion = 0;
  int _totalScore = 0;

  void _restartQuiz() {
    setState(() {
      _indexQuestion = 0;
      _totalScore = 0;
    });
  }

  void _answerSelected(int score) {
    _totalScore += score;

    setState(() {
      _indexQuestion = _indexQuestion + 1;
    });
    print(_indexQuestion);

    if (_indexQuestion < questions.length) {
      print('There are more questions');
    } else {
      print('Your Score');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Quiz App',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: _indexQuestion < questions.length
            ? Column(
                children: [
                  Questions(
                    questions[_indexQuestion]['question'],
                  ),
                  ...(questions[_indexQuestion]['answers']
                          as List<Map<String, Object>>)
                      .map((answer) {
                    return Answers(
                        () => _answerSelected(answer['score']), answer['text']);
                  }).toList()
                ],
              )
            : FinalScore(_totalScore, _restartQuiz),
        backgroundColor: Colors.white12,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
