import 'package:flutter/material.dart';
import 'package:quiz_demo/screen/qa.dart';
import 'package:quiz_demo/screen/result.dart';

void main() => runApp(
      MaterialApp(
        title: "Quiz Demo",
        theme: ThemeData(
          primaryColor: Colors.blueGrey,
        ),
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _qaIndex = 0;
  int totalscore = 0;
  final _quesNans = const [
    {
      'ques': 'Choose your fav color',
      'ans': [
        {'name': 'red', 'score': 10},
        {'name': 'green', 'score': 8},
        {'name': 'blue', 'score': 7},
        {'name': 'yellow', 'score': 5},
        {'name': 'purple', 'score': 3},
        {'name': 'white', 'score': 1},
      ]
    },
    {
      'ques': 'Choose your fav animal',
      'ans': [
        {'name': 'Lion', 'score': 10},
        {'name': 'Monkey', 'score': 7},
        {'name': 'Fish', 'score': 5},
        {'name': 'Dog', 'score': 3},
        {'name': 'Cat', 'score': 2},
      ]
    },
    {
      'ques': 'Choose your fav fashion',
      'ans': [
        {'name': 'Classic', 'score': 1},
        {'name': 'Free Style', 'score': 5},
        {'name': 'Street', 'score': 8},
        {'name': 'Country', 'score': 3},
      ]
    },
    {
      'ques': 'Choose your fav game',
      'ans': [
        {'name': 'DotA2', 'score': 6},
        {'name': 'CSGO', 'score': 7},
        {'name': 'Mario', 'score': 2},
        {'name': 'PUBG', 'score': 9},
      ]
    },
    {
      'ques': 'Choose your fav OS',
      'ans': [
        {'name': 'Andriod', 'score': 3},
        {'name': 'iOS', 'score': 4},
        {'name': 'Window', 'score': 7},
        {'name': 'Linux', 'score': 8},
      ]
    },
  ];

  void reset() {
    setState(() {
      _qaIndex = 0;
      totalscore = 0;
    });
  }

  void _ansQuesHandler(int score) {
    totalscore += score;
    setState(() {
      _qaIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Quiz Demo'),
        elevation: 0,
      ),
      body: Container(
        child: _qaIndex < _quesNans.length
            ? QA(
                ansQuesHandler: _ansQuesHandler,
                qaIndex: _qaIndex,
                quesNans: _quesNans)
            : MyResult(totalscore: totalscore, reset: reset),
      ),
    );
  }
}
