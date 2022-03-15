import 'package:flutter/material.dart';
import './questions.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['what is your name ?', 'what is my name ?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter R'),
        ),
        body: Column(
          children: [
            Question(questions.elementAt(_questionIndex)),
            RaisedButton(child: Text('Answer 1'), onPressed: answer),
            RaisedButton(child: Text('Answer 2'), onPressed: answer),
            RaisedButton(child: Text('Answer 3'), onPressed: answer),
          ],
        ),
      ),
    );
  }
}
