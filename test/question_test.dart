import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pubquiz_mobile/question.dart';

void main() {
  final question = {
    'text': 'question 1',
    'choices': ['a1', 'a2'],
    'answer': 'a2'
  };

  testWidgets('shows the question', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Question(question)));

    expect(find.text('question 1'), findsOneWidget);
  });

  testWidgets('shows the choices', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Question(question)));

    expect(find.text('a1'), findsOneWidget);
    expect(find.text('a2'), findsOneWidget);
  });

  testWidgets('saves selected choice', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Question(question)));

    await tester.tap(find.text('a1'));
    await tester.tap(find.byTooltip('Next'));

    expect(question['selectedChoice'], matches('a1'));
  });
}