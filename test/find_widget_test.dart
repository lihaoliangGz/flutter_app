import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("find a Test Widget", (widgetTester) async {
    await widgetTester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Text("H"),
      ),
    ));
    var text = find.text("H");
    expect(text, findsOneWidget);
  });

  testWidgets("find a widget with key", (widgetTester) async {
    const key = Key("key");
    await widgetTester.pumpWidget(MaterialApp(
      key: key,
      home: Container(),
    ));
    expect(find.byKey(key), findsOneWidget);
  });


  testWidgets('finds a specific instance', (tester) async {
    const childWidget = Padding(padding: EdgeInsets.zero);

    // Provide the childWidget to the Container.
    await tester.pumpWidget(Container(child: childWidget));

    // Search for the childWidget in the tree and verify it exists.
    expect(find.byWidget(childWidget), findsOneWidget);
  });
}
