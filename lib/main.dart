import 'package:flutter/material.dart';

void main() {
  runApp(PubQuizApp());
}

class PubQuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pubquiz Mobile',
      home: QuestionWidget()
    );
  }
}

class QuestionWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  final question = {
    'text': 'What is the answer to life, the universe and everything?',
    'choices': ['40', '41', '42', '43'],
    'answer': '42'
  };
  String _selectedChoice = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 1'),
      ),
      body: ListView(
          children: [
            Text(question['text']),
            _choiceRadioListTile('41'),
            _choiceRadioListTile('42'),
            _choiceRadioListTile('43'),
            _choiceRadioListTile('44'),
          ]
      ),
    );
  }

  Widget _choiceRadioListTile(String choice) {
    return RadioListTile<String>(
      title: Text(choice),
      value: choice,
      groupValue: _selectedChoice,
      onChanged: (String value) {
        setState(() => {
          _selectedChoice = value
        });
      },
    );
  }
}