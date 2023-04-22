import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class OtherDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    Future<void> f = printWithDelay("Async");
    f.then((value) {
      print("f.then执行");
    });
    f.whenComplete(() {
      print("When Complete执行");
    });
    printWithDelay2("Async");

    return NotificationListener(
      onNotification: (ScrollNotification note) {
        print("滚动的位置: ${note.metrics.pixels.toInt()}"); // 滚动位置。
        return true;
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

  Future<void> printWithDelay(String msg) async {
    await Future.delayed(Duration(seconds: 5));
    print("msg=${msg}");
  }

  Future<void> printWithDelay2(String msg) {
    return Future.delayed(Duration(seconds: 5)).then((value) {
      print("msg2=${msg}");
    });
  }

  @override
  String getTitle() {
    return "其他";
  }
}
