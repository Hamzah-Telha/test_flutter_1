import './question.dart';
import './answer.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

//********************************************************************************************** */

class MyApp extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // implement createState
    return _MyAppState();
  }
}

//********************************************************************************************** */

class _MyAppState extends State<MyApp>
{
    var _questionIndex = 0;

    void _answerQuestion()
    {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      print(_questionIndex);
    }
  @override
  Widget build(BuildContext context)
  {

    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Rad', 'Green', 'White'],
      },
      {
        'questionText': 'Who\'s your favorite animal',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'Who\'s your favorite instructor',
        'answers': ['Max', 'Max', 'Max', 'Max'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'] as String,
              ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}