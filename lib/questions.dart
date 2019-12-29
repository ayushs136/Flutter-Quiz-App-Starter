import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Questions extends StatelessWidget {
  final String questionText;
  Questions(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),      
      child:Text(
      questionText,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,)
        );
  }
}


class Options extends StatelessWidget{
  final String optionList;
  Options(this.optionList);
  @override 
  Widget build(BuildContext context){
    return Text(
      optionList,
    );
  }
}