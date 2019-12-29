import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
final Function selectHandler;
final String answerText;
Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.teal,
        textColor:  Color.fromRGBO(244, 180, 0, 1),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
