import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pubquiz_mobile/choices.dart';

void main() {
  group('ChoicesWidget', () {
    var selectedChoice;
    final setSelectedChoice = (value) { selectedChoice = value; };
    const choices = ['41', '42'];

    testWidgets('shows the choices', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
          home: Scaffold(
            body: Choices(choices, null, setSelectedChoice),
          ),
      ));

      expect(find.text('41'), findsOneWidget);
      expect(find.text('42'), findsOneWidget);
    });

    testWidgets('selects choice', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: Choices(choices, null, setSelectedChoice),
        ),
      ));

      await tester.tap(find.text('42'));

      expect(selectedChoice, matches('42'));
    });
  });
}
