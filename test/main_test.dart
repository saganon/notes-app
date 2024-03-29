import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:notes_app/main.dart';

void main() {
  testWidgets('Main Page Test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byKey(const ValueKey('App Bar')), findsOneWidget);
    expect(find.byIcon(Icons.search), findsOneWidget);
    expect(find.byIcon(Icons.add_rounded), findsOneWidget);
    expect(find.byIcon(Icons.home_outlined), findsOneWidget);
    expect(find.byIcon(Icons.folder_open), findsOneWidget);
    expect(find.byIcon(Icons.delete_outline), findsOneWidget);
  });

  testWidgets('Bottom Navigator Bar Test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byIcon(Icons.home_outlined));
    await tester.pump();

    expect(find.text('Welcome to Notes'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.folder_open));
    await tester.pump();

    expect(find.text('Index 1: Folder'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.delete_outline));
    await tester.pump();

    expect(find.text('Index 2: Trash'), findsOneWidget);
  });
}
