import 'package:flutter/material.dart';
import 'package:pubquiz_mobile/question.dart';

void main() {
  runApp(PubQuizApp());
}

class PubQuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Pubquiz Mobile', home: Question());
  }
}
