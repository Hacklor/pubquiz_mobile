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
      body: Column(
        children: [
          Text(question['text']),
          Column(
            children: _choices(),
          ),
        ],
      ),
    );
  }

  List<Widget> _choices() {
    List<Widget> choicesWidgets = [];

    for (final choice in question['choices']) {
      choicesWidgets.add(_choiceRadioListTile(choice));
    }

    return choicesWidgets;
  }

  Widget _choiceRadioListTile(String choice) {
    return RadioListTile<String>(
      title: Text(choice),
      value: choice,
      groupValue: _selectedChoice,
      onChanged: _setSelectedChoice,
    );
  }

  void _setSelectedChoice(String value) {
    setState(() => {
      _selectedChoice = value
    });
  }
}