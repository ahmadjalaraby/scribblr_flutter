import 'package:app_ui/app_ui.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/pump_app.dart';

void main() {
  group('AppLogo', () {
    testWidgets('renders Image for AppLogo.dark', (widgetTester) async {
      await widgetTester.pumpApp(AppLogo.dark());

      expect(
        find.byWidgetPredicate(
          (widget) => widget is SvgPicture && widget.width == 150,
        ),
        findsOneWidget,
      );
    });

    testWidgets('renders Image for AppLogo.light', (widgetTester) async {
      await widgetTester.pumpApp(AppLogo.light());

      expect(
        find.byWidgetPredicate(
          (widget) => widget is SvgPicture && widget.width == 150,
        ),
        findsOneWidget,
      );
    });
  });
}
