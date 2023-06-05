import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/widgets/clip/clip_app.dart';
import 'package:flutterapp/widgets/cupertino/cupertino_widgets_app.dart';
import 'package:flutterapp/widgets/materialwidget/material_component_widget_app.dart';
import 'package:flutterapp/widgets/other_app.dart';
import 'package:flutterapp/widgets/text_widgets/text_widgets_app.dart';
import 'package:flutterapp/widgets/widget_layout/widget_layout_app.dart';

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
        ListTile(
          title: Text("MaterialApp"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MaterialComponentWidgetApp()),
            );
          },
        ),
        ListTile(
          title: Text("Text Widgets"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TextWidgetsApp()),
            );
          },
        ),
        ListTile(
          title: Text("other"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OtherApp()),
            );
          },
        ),
        ListTile(
          title: Text("iOS 风格 widgets 列表"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CupertinoWidgetsApp()),
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
