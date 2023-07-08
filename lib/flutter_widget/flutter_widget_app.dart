import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/flutter_widget/cupertino/cupertino_widgets_app.dart';
import 'package:flutterapp/flutter_widget/material/material_widget_app.dart';

import 'widgets/widgets_app.dart' as WidgetsApp;

class FlutterWidgetApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("widgets"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WidgetsApp.WidgetsApp()),
            );
          },
        ),
        ListTile(
          title: Text("material"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MaterialWidgetApp()),
            );
          },
        ),
        ListTile(
          title: Text("cupertino"),
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
