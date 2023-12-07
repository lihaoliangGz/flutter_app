import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/flutter_widget/widgets/touch_interactions/draggable_example.dart';
import 'package:flutterapp/flutter_widget/widgets/touch_interactions/draggable_scrollable_sheet_example.dart';

class TouchInteractionApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("DraggableScrollableSheet"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DraggableScrollableSheetExample()),
            );
          },
        ),
        ListTile(
          title: Text("Draggable"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DraggableExample()),
            );
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return 'Touch Interaction';
  }
}
