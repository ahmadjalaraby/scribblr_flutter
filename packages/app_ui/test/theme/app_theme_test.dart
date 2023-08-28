import 'package:app_ui/app_ui.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AppTheme', () {
    group('themeData', () {
      group('color', () {
        test('primary is brown', () {
          expect(
            const AppTheme().themeData.primaryColor,
            AppColors.primary,
          );
        });

        test('secondary is AppColors.primary', () {
          expect(
            const AppTheme().themeData.colorScheme.secondary,
            AppColors.primary.shade900,
          );
        });
      });

      group('divider', () {
        test('horizontal padding is `AppSpacing.lg`', () {
          expect(
            const AppTheme().themeData.dividerTheme.indent,
            AppSpacing.lg,
          );

          expect(
            const AppTheme().themeData.dividerTheme.endIndent,
            AppSpacing.lg,
          );
        });

        test('space is `AppSpacing.lg`', () {
          expect(
            const AppTheme().themeData.dividerTheme.space,
            AppSpacing.lg,
          );
        });
      });
    });
  });
}
