import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class OtherDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    return NotificationListener(
      onNotification: (ScrollNotification note) {
        print("滚动的位置: ${note.metrics.pixels.toInt()}"); // 滚动位置。
      },
      child: ListView(
        children: <Widget>[
          Container(height: 50, child: Text("GSYGithubAppFlutter")),
          Container(height: 50, child: Text("GSY Flutter Demo")),
          Container(height: 50, child: Text("gallery")),
          Container(height: 50, child: Text("flutter-go")),
        ],
      ),
    );
  }

  @override
  String getTitle() {
    return "其他";
  }
}
