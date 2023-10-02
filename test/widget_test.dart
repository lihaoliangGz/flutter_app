import 'package:flutter_test/flutter_test.dart';
import 'package:flutterapp/test_debug/test/my_widget.dart';

void main() {
  // Define a test. The TestWidgets function also provides a WidgetTester
  // to work with. The WidgetTester allows you to build and interact
  // with widgets in the test environment.
  testWidgets('MyWidget has a title and message', (tester) async {
    // Test code goes here.
    await tester.pumpWidget(const MyWidget(title: 'T', message: 'M'));
    var titleFinder = find.text("T");
    var messageFinder = find.text("M");
    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}