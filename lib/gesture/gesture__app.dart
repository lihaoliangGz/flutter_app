import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/gesture/gesture_page.dart';
import 'package:flutterapp/gesture/listener_widget_page.dart';
import 'package:flutterapp/gesture/slide_page.dart';

class GestureApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("GestureDetector"),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => GesturePage()));
          },
        ),
        ListTile(
          title: Text("实现item向左滑动删除"),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SlidePage()));
          },
        ),
        ListTile(
          title: Text("Listener widget"),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ListenerWidgetPage()));
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "事件处理";
  }
}
