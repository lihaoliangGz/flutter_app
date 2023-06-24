import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/flutter_widget/material/MediaQueryPage.dart';
import 'package:flutterapp/flutter_widget/widgets/dismissible_example.dart';
import 'package:flutterapp/flutter_widget/widgets/hero_example.dart';
import 'package:flutterapp/flutter_widget/widgets/icon_page.dart';
import 'package:flutterapp/flutter_widget/widgets/overlay_example.dart';

class OtherApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("Icon"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => IconPage()),
            );
          },
        ),
        ListTile(
          title: Text("MediaQuery"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MediaQueryPage()),
            );
          },
        ),
        ListTile(
          title: Text("Hero"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HeroExample()),
            );
          },
        ),
        ListTile(
          title: Text("Overlay"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OverlayExample()),
            );
          },
        ),
        ListTile(
          title: Text("Dismissible"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DismissibleExample()),
            );
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "Other";
  }
}
