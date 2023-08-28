import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppTextStyles', () {
    group('LTRTextStyle', () {
      test('display2 returns TextStyle', () {
        expect(LTRTextStyle.display2, isA<TextStyle>());
      });

      test('display3 returns TextStyle', () {
        expect(LTRTextStyle.display3, isA<TextStyle>());
      });

      test('headline1 returns TextStyle', () {
        expect(LTRTextStyle.headline1, isA<TextStyle>());
      });

      test('headline2 returns TextStyle', () {
        expect(LTRTextStyle.headline2, isA<TextStyle>());
      });

      test('headline3 returns TextStyle', () {
        expect(LTRTextStyle.headline3, isA<TextStyle>());
      });

      test('headline4 returns TextStyle', () {
        expect(LTRTextStyle.headline4, isA<TextStyle>());
      });

      test('headline5 returns TextStyle', () {
        expect(LTRTextStyle.headline5, isA<TextStyle>());
      });

      test('headline6 returns TextStyle', () {
        expect(LTRTextStyle.headline6, isA<TextStyle>());
      });

      test('subtitle1 returns TextStyle', () {
        expect(LTRTextStyle.subtitle1, isA<TextStyle>());
      });

      test('subtitle2 returns TextStyle', () {
        expect(LTRTextStyle.subtitle2, isA<TextStyle>());
      });

      test('bodyXSmall returns TextStyle', () {
        expect(LTRTextStyle.bodyXSmall, isA<TextStyle>());
      });

      test('bodySmall returns TextStyle', () {
        expect(LTRTextStyle.bodySmall, isA<TextStyle>());
      });
      test('bodyMedium returns TextStyle', () {
        expect(LTRTextStyle.bodyMedium, isA<TextStyle>());
      });
      test('bodyLarge returns TextStyle', () {
        expect(LTRTextStyle.bodyLarge, isA<TextStyle>());
      });
      test('bodyXLarge returns TextStyle', () {
        expect(LTRTextStyle.bodyXLarge, isA<TextStyle>());
      });
    });
  });
}
