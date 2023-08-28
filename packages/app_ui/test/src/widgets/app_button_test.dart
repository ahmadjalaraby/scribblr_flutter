import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/pump_app.dart';

void main() {
  group('AppButton', () {
    final theme = AppTheme().themeData;
    final buttonTextTheme = theme.textTheme.bodyLarge!.copyWith(
      inherit: false,
    );

    testWidgets('renders button', (widgetTester) async {
      const buttonText = Text('buttonText');

      await widgetTester.pumpApp(
        Column(
          children: [
            AppButton.light(
              child: buttonText,
            ),
            const AppButton.dark(
              child: buttonText,
            ),
          ],
        ),
      );

      expect(find.byType(AppButton), findsNWidgets(2));
      expect(find.text('buttonText'), findsNWidgets(2));
    });

    testWidgets('renders dark button ' 'when `AppButton.dark()` called',
        (widgetTester) async {
      final buttonText = Text('buttonText');

      await widgetTester.pumpApp(
        AppButton.dark(
          child: buttonText,
          onPressed: () {},
        ),
        theme: theme,
      );

      final finder = find.byType(ElevatedButton);
      final widget = widgetTester.widget(finder) as ElevatedButton;

      expect(
        widget.style?.backgroundColor?.resolve({}),
        AppColors.dark4,
      );

      expect(
        widget.style?.textStyle?.resolve({}),
        LTRTextStyle.bodyLarge,
      );

      expect(
        widget.style?.maximumSize?.resolve({}),
        const Size(double.infinity, 60),
      );

      expect(
        widget.style?.minimumSize?.resolve({}),
        const Size(double.infinity, 60),
      );
    });

    testWidgets('renders a light button ' 'when `AppButton.light()` called',
        (widgetTester) async {
      final buttonText = Text('buttonText');

      await widgetTester.pumpApp(
        AppButton.light(
          child: buttonText,
          onPressed: () {},
        ),
        theme: theme,
      );

      final finder = find.byType(ElevatedButton);
      final widget = widgetTester.widget(finder) as ElevatedButton;

      expect(
        widget.style?.backgroundColor?.resolve({}),
        AppColors.primary.shade900,
      );

      expect(
        widget.style?.textStyle?.resolve({}),
        LTRTextStyle.bodyLarge,
      );

      expect(
        widget.style?.maximumSize?.resolve({}),
        const Size(double.infinity, 60),
      );

      expect(
        widget.style?.minimumSize?.resolve({}),
        const Size(double.infinity, 60),
      );
    });
  });
}
