import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class LogPrintPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            print("object");
          },
          child: Text("print"),
        ),
        TextButton(
          onPressed: () {
            debugPrint("Hello World");
          },
          child: Text("debugPrint"),
        ),
        TextButton(
          onPressed: () {
            log('message content',
                name: 'name', error: '{"code":0,"errorMsg":"错误信息内容"}');
          },
          child: Text("log"),
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "日志输出";
  }
}
