import 'package:flutter_test/flutter_test.dart';

import 'package:alu_connect/main.dart';

void main() {
  testWidgets('App renders login screen on first launch',
      (WidgetTester tester) async {
    await tester.pumpWidget(const ALUConnectApp());
    await tester.pumpAndSettle();

    // Not logged in by default — login screen should be visible.
    // "Sign in with ALU Account" is a plain Text inside the ElevatedButton.
    expect(find.text('Sign in with ALU Account'), findsOneWidget);
    expect(find.text('Connect. Collaborate. Lead together.'), findsOneWidget);
  });

  testWidgets('Sign in navigates to home screen',
      (WidgetTester tester) async {
    await tester.pumpWidget(const ALUConnectApp());
    await tester.pumpAndSettle();

    await tester.tap(find.text('Sign in with ALU Account'));
    await tester.pumpAndSettle();

    // After login the bottom NavigationBar labels should appear.
    expect(find.text('Explore'), findsOneWidget);
    expect(find.text('Chats'), findsOneWidget);
  });
}
