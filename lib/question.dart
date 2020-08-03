import 'package:flutter/material.dart';
import 'package:pubquiz_mobile/results.dart';

import 'choices.dart';

class Question extends StatefulWidget {
  final Map<String, Object> _question;

  Question(this._question);

  @override
  State<StatefulWidget> createState() => _QuestionState(_question);
}

class _QuestionState extends State<Question> {
  Map<String, Object> _question;
  String _selectedChoice = "";

  _QuestionState(this._question);

  void _setSelectedChoice(String value) {
    setState(() => {_selectedChoice = value});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 1'),
      ),
      body: Column(
        children: [
          Text(_question['text']),
          Choices(_question['choices'], _selectedChoice, _setSelectedChoice),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _question['selectedChoice'] = _selectedChoice;

          Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Results(_question))
          );
        },
        tooltip: 'Next',
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}