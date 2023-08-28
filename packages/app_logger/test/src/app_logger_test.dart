// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:app_logger/app_logger.dart';

void main() {
  group('AppLogger', () {
    test('can be instantiated', () {
      expect(AppLogger(), isNotNull);
    });
  });
}
