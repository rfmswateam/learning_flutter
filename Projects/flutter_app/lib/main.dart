import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "questionText": "question 1",
        "answers": ["a1", "a2", "a3", "a4"],
      },
      {
        "questionText": "question 2",
        "answers": ["b1", "b2", "b3", "b4"],
      },
      {
        "questionText": "question 3",
        "answers": ["c1", "c2", "c3", "c4"],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my first app"),
        ),
        body: questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  Question(
                    questions[questionIndex]["questionText"] as String,
                  ),
                  ...(questions[questionIndex]["answers"] as List<String>)
                      .map((e) {
                    return Answer(answerQuestion, e);
                  }).toList()
                ],
              )
            : Center(
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: null,
                      child: Text("Elevated Button"),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text("Text Button"),
                    ),
                    OutlinedButton(
                      onPressed: null,
                      child: Text("Outlined Button"),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
