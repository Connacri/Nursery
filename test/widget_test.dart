import 'package:flutter_test/flutter_test.dart';
import 'package:nursery/main.dart';

void main() {
  testWidgets('App initialization test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the login page or initial text is present.
    expect(find.text('Welcome to NurseryOS Enterprise+'), findsOneWidget);
  });
}
