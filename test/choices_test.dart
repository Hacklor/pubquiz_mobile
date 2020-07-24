import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:pubquiz_mobile/choices.dart';

class MockFunction extends Mock {
  int call(String param);
}

void main() {
  group('ChoicesWidget', () {
    const choices = ['41', '42'];

    testWidgets('shows the choices', (WidgetTester tester) async {

      await tester.pumpWidget(MaterialApp(
          home: Scaffold(
            body: Choices(choices),
          ),
      ));

      expect(find.text('41'), findsOneWidget);
      expect(find.text('42'), findsOneWidget);
    });

    testWidgets('selects choice', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: Choices(choices),
        ),
      ));

      // await tester.tap(find.text(choice));

      // verify(stubbedOnChange).called(1);
    });
  });
}
