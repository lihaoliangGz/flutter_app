import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/widgets/MediaQueryPage.dart';
import 'package:flutterapp/widgets/hero_example.dart';
import 'package:flutterapp/widgets/icon_page.dart';

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
      ],
    );
  }

  @override
  String getTitle() {
    return "Other";
  }
}
