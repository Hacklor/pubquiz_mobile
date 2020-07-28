import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final Map<String, Object> _question;

  Results(this._question);

  @override
  Widget build(BuildContext context) {
    print(_question);

    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Column(
        children: [
          Text(_question.toString()),
        ],
      ),
    );
  }
}