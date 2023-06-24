import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/flutter_widget/widgets/clip/clip_oval_page.dart';
import 'package:flutterapp/flutter_widget/widgets/clip/clip_rect_page.dart';

import 'clip_path_page.dart';

class ClipApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("ClipOval"),
          onTap: () {
            Navigator.of(context)
                .push(new MaterialPageRoute(builder: (context) {
              return new ClipOvalPage();
            }));
          },
        ),
        ListTile(
          title: Text("ClipRect"),
          onTap: () {
            Navigator.of(context)
                .push(new MaterialPageRoute(builder: (context) {
              return new ClipRectPage();
            }));
          },
        ),
        ListTile(
          title: Text("ClipPath"),
          onTap: () {
            Navigator.of(context)
                .push(new MaterialPageRoute(builder: (context) {
              return new ClipPathPage();
            }));
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "裁剪widget";
  }
}
