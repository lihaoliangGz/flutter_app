import 'package:flutter/material.dart';

class DebugApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint("debugPrint()方法可以避免丢弃一些日志行");
    //debugger(when: true); //debugger() 声明
    return Scaffold(
      appBar: AppBar(
        title: Text("调试 flutter apps"),
      ),
      body: ListView(
        children: <Widget>[
          MaterialButton(
            color: Colors.green,
            child: Text('按钮'),
            onPressed: () {
              //debugDumpApp(); //转储Widgets库的状态
              debugDumpRenderTree(); //转储渲染树
            },
          )
        ],
      ),
    );
  }
}
