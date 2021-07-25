import 'package:flutter/material.dart';

class Answer extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          child: Text('Answer 1'),
          onPressed: null,
        )
    );
  }
}