import 'package:change_color_on_tap/ui/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Future<void> mySetUp(WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
  }

  testWidgets('Initial state test', (WidgetTester tester) async {
    await mySetUp(tester);
    expect(find.text('Hey there'), findsOneWidget);
  });

  testWidgets(
    'Screen change background color after tapping on screen',
    (widgetTester) async {
      await mySetUp(widgetTester);

      final animatedContainerFinder = find.byWidgetPredicate(
        (widget) =>
            widget is AnimatedContainer &&
            widget.decoration == const BoxDecoration(color: Colors.white),
      );
      expect(animatedContainerFinder, findsOneWidget);

      await widgetTester.tap(find.text('Hey there'));
      await widgetTester.pump(const Duration(seconds: 2));

      expect(animatedContainerFinder, findsNothing);
    },
  );
}
