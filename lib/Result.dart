import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function reserHandler;

  Result(this.finalScore, this.reserHandler);

  String get resultPhrase {
    String resultText = 'That\'s it! Here\'s your Score: ';

    if (finalScore == 30 && finalScore >= 25) {
      resultText = "You got it, dude! ";
    } else if (finalScore < 25 && finalScore >= 20) {
      resultText = "Awesome Work! ";
    } else if (finalScore < 20 && finalScore >= 15) {
      resultText = "Great work! ";
    } else if (finalScore < 15 && finalScore >= 10) {
      resultText = "can consider! ";
    } else {
      resultText = "Try Again! ";
    }

    return resultText + finalScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text("Restart Quiz!"),
            onPressed: reserHandler,
          )
        ],
      ),
    );
  }
}
