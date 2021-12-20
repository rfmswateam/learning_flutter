import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  Question(this.questionText, {Key? key}) : super(key: key);

  String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(2),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
