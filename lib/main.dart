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
  @override
  Widget build(BuildContext context)
  {

    final _questions = const [
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

    var _questionIndex = 0;

    void _answerQuestion()
    {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      print(_questionIndex);

      if (_questionIndex < _questionIndex + 1)
        print('We have more questions!');
      else
        print('No more questions!');
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
          ? Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,
        )
            : Result(),
      ),
    );
  }
}