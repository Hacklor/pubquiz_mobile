import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pubquiz_mobile/question.dart';

void main() {
  testWidgets('shows the question', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Question()));

    expect(find.text('What is the answer to life, the universe and everything?'), findsOneWidget);
  });

  testWidgets('shows the choices', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Question()));

    expect(find.text('40'), findsOneWidget);
    expect(find.text('41'), findsOneWidget);
    expect(find.text('42'), findsOneWidget);
    expect(find.text('43'), findsOneWidget);
  });

  testWidgets('selects choice', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Question()));

    await tester.tap(find.text('42'));
  });
}