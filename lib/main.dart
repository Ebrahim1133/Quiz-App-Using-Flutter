import 'package:flutter/material.dart';
import 'result.dart';
import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

Color w = Colors.white;
Color b = Colors.blue;

class _MyAppState extends State<MyApp> {
  bool isswitch = false;
  int _questionIndex = 0;
  int _totalScore = 0;
  int num0 = 0, num1 = 0, num2 = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      num0 = 0;
      num1 = 0;
      num2 = 0;
    });
  }

  void answerQuestion(int score) {
    if (_questionIndex == 0)
      num0 = score;
    else if (_questionIndex == 1)
      num1 = score;
    else if (_questionIndex == 2) num2 = score;

    setState(() {
      _questionIndex += 1;
      _totalScore += score!;
    });
  }

  final _question = [
    {
      'questionText': 'What\'s your Favorite Color?',
      'answers': [
        {
          'text': 'Blue',
          'score': 10
        },
        {
          'text': 'Green',
          'score': 20
        },
        {
          'text': 'Red',
          'score': 30
        },
        {
          'text': 'Black',
          'score': 40
        },
      ]
    },
    {
      'questionText': 'What\'s your Favorite Animal?',
      'answers': [
        {
          'text': 'Lion',
          'score': 10
        },
        {
          'text': 'Tiger',
          'score': 20
        },
        {
          'text': 'Rabbit',
          'score': 30
        },
        {
          'text': 'Element',
          'score': 40
        },
      ]
    },
    {
      'questionText': 'What\'s your Favorite Friend?',
      'answers': [
        {
          'text': 'Mohamed',
          'score': 10
        },
        {
          'text': 'Amr',
          'score': 20
        },
        {
          'text': 'Ahmed',
          'score': 30
        },
        {
          'text': 'Shief',
          'score': 40
        },
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App",
            style: TextStyle(
              color: w,
            ),
          ),
          leading: Icon(
            Icons.integration_instructions_outlined,
            color: w,
          ),
          actions: [
            // ignore: deprecated_member_use
            FlatButton(
              child: Icon(
                Icons.swap_horiz,
                color: w,
              ),
              onPressed: () {
                setState(() {
                  if (isswitch == false) {
                    w = Colors.black;
                    b = Colors.red;
                    isswitch = true;
                  } else {
                    w = Colors.white;
                    b = Colors.blue;
                    isswitch = false;
                  }
                });
              },
            ),
          ],
          backgroundColor: b,
        ),
        body: Container(color: w, child: _questionIndex < _question.length ? Quiz(_question, _questionIndex, answerQuestion) : Result(_resetQuiz, _totalScore)),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.arrow_back,
            color: w,
          ),
          onPressed: () {
            if (_questionIndex == 1) _totalScore -= num0;
            if (_questionIndex == 2) _totalScore -= num1;
            if (_questionIndex == 3) _totalScore -= num2;
            setState(() {
              if (_questionIndex > 0) {
                _questionIndex--;
              }
            });
          },
          backgroundColor: b,
        ),
      ),
    );
  }
}
