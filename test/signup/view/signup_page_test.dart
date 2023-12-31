// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:scribblr/signup/signup.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SignupPage', () {
    group('route', () {
      test('is routable', () {
        expect(SignupPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders SignupView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: SignupPage()));
      expect(find.byType(SignupView), findsOneWidget);
    });
  });
}
