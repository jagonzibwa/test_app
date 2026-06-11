import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:camp_connect/main.dart';

void main() {
  testWidgets('App renders login screen on first launch',
      (WidgetTester tester) async {
    await tester.pumpWidget(const CampConnectApp());
    await tester.pumpAndSettle();

    expect(find.text('Welcome Back'), findsOneWidget);
    expect(find.text('Connect. Collaborate. Lead together.'),
        findsOneWidget);
  });

  testWidgets('Sign in navigates to home screen',
      (WidgetTester tester) async {
    await tester.pumpWidget(const CampConnectApp());
    await tester.pumpAndSettle();

    await tester.enterText(
        find.byType(TextField).at(0), 'test@alu.edu');
    await tester.enterText(
        find.byType(TextField).at(1), 'password123');
    await tester.tap(find.text('Sign In'));
    await tester.pumpAndSettle();

    expect(find.text('Explore'), findsOneWidget);
    expect(find.text('Chats'), findsOneWidget);
  });
}
