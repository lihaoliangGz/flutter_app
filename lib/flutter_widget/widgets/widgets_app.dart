import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/flutter_widget/widgets/clip/clip_app.dart';
import 'package:flutterapp/flutter_widget/widgets/functions/widgets_functions_app.dart';
import 'package:flutterapp/flutter_widget/widgets/other_app.dart';
import 'package:flutterapp/flutter_widget/widgets/reuse_widget_example.dart';
import 'package:flutterapp/flutter_widget/widgets/text_widgets/text_widgets_app.dart';
import 'package:flutterapp/flutter_widget/widgets/widget_layout/widget_layout_app.dart';

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
          title: Text("widgets functions"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WidgetsFunctionsApp()),
            );
          },
        ),
        ListTile(
          title: Text("测试widget重建"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ReuseWidgetExample()),
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
