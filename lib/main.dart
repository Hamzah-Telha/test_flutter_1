import './question.dart';
import './quiz.dart';
import './result.dart';
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
        'answers': [
          {'text': 'Black', 'score': 10}, 
          {'text': 'Rad', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1}
          ],
      },
      {
        'questionText': 'Who\'s your favorite animal',
        'answers': [
          {'text': 'Rabbit', 'score': 3}, 
          {'text': 'Snake', 'score': 11},
          {'text': 'Elephant', 'score': 5},
          {'text': 'Lion', 'score': 9},
          ],
      },
      {
        'questionText': 'Who\'s your favorite instructor',
        'answers': [
          {'text': 'Max', 'score': 1}, 
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          ],
      },
    ];

    var _questionIndex = 0;
    var _totalScore = 0;

    void _answerQuestion(int score)
    {
      _totalScore += score;
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
            : Result(_totalScore),
      ),
    );
  }
}