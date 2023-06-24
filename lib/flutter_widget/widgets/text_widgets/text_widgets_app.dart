import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/flutter_widget/widgets/text_widgets/rich_text_page.dart';
import 'package:flutterapp/flutter_widget/widgets/text_widgets/text_page.dart';

class TextWidgetsApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("text"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TextPage()),
            );
          },
        ),
        ListTile(
          title: Text("RichText"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RichTextPage()),
            );
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "Text Widgets";
  }
}
