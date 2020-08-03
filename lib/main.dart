import 'package:flutter/material.dart';
import 'package:pubquiz_mobile/question.dart';

void main() {
  runApp(PubQuizApp());
}

class PubQuizApp extends StatelessWidget {
  final _question = {
    'text': 'What is the answer to life, the universe and everything?',
    'choices': ['40', '41', '42', '43'],
    'answer': '42'
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Pubquiz Mobile', home: Question(_question));
  }
}
