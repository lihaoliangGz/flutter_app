import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/widgets/clip/clip_app.dart';
import 'package:flutterapp/widgets/widget_layout/widget_layout.dart';

class WidgetsApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("layout"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WidgetLayoutApp()),
            );
          },
        ),
        ListTile(
          title: Text("clip"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ClipApp()),
            );
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "Widgets";
  }
}
