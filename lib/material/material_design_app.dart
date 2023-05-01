import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

import 'circle_avatar_page.dart';

class MaterialDesignApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("CircleAvatar"),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CircleAvatarPage()));
          },
        )
      ],
    );
  }

  @override
  String getTitle() {
    return "Material Design";
  }
}
