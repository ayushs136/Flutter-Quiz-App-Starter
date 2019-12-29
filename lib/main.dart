import 'package:flutter/material.dart';
import 'package:flutter_starter/Result.dart';
import './Result.dart';
import './quiz.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  // var _optionIndex = 0;
  var _totalScore = 0;

  void _resetStuff() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  // void _optionsFirst() {
  //   setState(() {
  //     _optionIndex += 1;
  //   });
  //   print(_optionIndex);
  // }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'questionText': 'Odd one out!',
        'answer': [
          {'text': 'Cat', 'score': 10},
          {'text': 'Duck', 'score': 9},
          {'text': 'Mice', 'score': 7},
          {'text': 'Dog', 'score': 0}
        ]
      },
      {
        'questionText': 'What\'s the color of Moon ?',
        'answer': [
          {'text': 'White', 'score': 10},
          {'text': 'Black', 'score': 9},
          {'text': 'Red', 'score': 7},
          {'text': 'Blue', 'score': 0}
        ]
      },
      {
        'questionText': 'Where is Qutub Minar ?',
        'answer': [
          {'text': 'New Delhi', 'score': 10},
          {'text': 'Indore', 'score': 9},
          {'text': 'Agra', 'score': 7},
          {'text': 'Gwalior', 'score': 0}
        ]
      }
    ];

    // var options1 = [
    //   'Cat',
    //   'Balck',
    //   'Gwalior',
    // ];

    // var options2 = [
    //   'Dog',
    //   'white',
    //   'Delhi',
    // ];
    // var options3 = [
    //   'Platypus',
    //   'Blue',
    //   'Agra',
    // ];
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: Color.fromRGBO(219, 68, 55, 1),
      )),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quized!'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              // RaisedButton(
              //     child: Options(options1[_optionIndex]),
              //     onPressed: () {
              //       _answerQuestion();
              //       _optionsFirst();
              //     }),
              // RaisedButton(
              //   child: Options(options2[_optionIndex]),
              //   onPressed: () {
              //     print(options2[_optionIndex]);
              //   },
              // ),
              // RaisedButton(
              //   child: Options(options3[_optionIndex]),
              //   onPressed: () {
              //     print(options3[_optionIndex]);
              //   },
              // ),

              : Result(_totalScore, _resetStuff)),
    );
  }
}
