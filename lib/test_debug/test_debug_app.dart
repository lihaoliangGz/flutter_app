import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/test_debug/handle_error_page.dart';
import 'package:flutterapp/test_debug/log_print_page.dart';

class TestDebugApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("处理错误"),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => HandleErrorPage()));
          },
        ),
        ListTile(
          title: Text("日志输出"),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => LogPrintPage()));
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "测试和调试";
  }
}
