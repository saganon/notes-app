import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes_app/main.dart';

void main() {
  testWidgets('All Notes Screen Test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byIcon(Icons.home_outlined));
    await tester.pump();

    expect(find.text('Welcome to Notes'), findsOneWidget);
    expect(find.text('14 January 2023'), findsOneWidget);
  });
}
