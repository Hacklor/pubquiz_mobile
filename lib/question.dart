import 'package:flutter/material.dart';

import 'choices.dart';

class Question extends StatelessWidget {
  final question = {
    'text': 'What is the answer to life, the universe and everything?',
    'choices': ['40', '41', '42', '43'],
    'answer': '42'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 1'),
      ),
      body: Column(
        children: [
          Text(question['text']),
          Choices(question['choices']),
        ],
      ),
    );
  }
}
