import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class LogPrintPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
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
          TextButton(onPressed: () {
            //debugPrintStack()
          }, child: Text("debugPrintStack"),),
          TextButton(
            onPressed: () {
              log('message content',
                  name: 'name', error: '{"code":0,"errorMsg":"错误信息内容"}');
            },
            child: Text("log"),
          ),
          // TextButton(
          //   onPressed: () {
          //     stderr.writeln("stderr writeln");
          //   },
          //   child: Text("stderr"),
          // ),
          TextButton(
            onPressed: () {
              debugger(message: "debugger:message");
            },
            child: Text("debugger"),
          ),
          TextButton(
            onPressed: () {
              debugDumpApp();
            },
            child: Text("打印widget树"),
          ),
          TextButton(
            onPressed: () {
              debugDumpRenderTree();
            },
            child: Text("打印Render树"),
          ),
          TextButton(
            onPressed: () {
              debugDumpLayerTree();
            },
            child: Text("打印Layer树"),
          ),
          TextButton(
            onPressed: () {
              debugDumpFocusTree();
            },
            child: Text("打印Focus树"),
          ),
          TextButton(
            onPressed: () {
              debugDumpSemanticsTree();
            },
            child: Text("打印Semantics树"),
          ),
        ],
      ),
    );
  }

  @override
  String getTitle() {
    return "日志输出";
  }
}
