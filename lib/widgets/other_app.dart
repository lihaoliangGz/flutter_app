import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
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
      ],
    );
  }

  @override
  String getTitle() {
    return "Other";
  }
}
