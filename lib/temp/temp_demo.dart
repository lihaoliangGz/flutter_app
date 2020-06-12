import 'package:flutter/material.dart';

class TempDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugPrint("DebugPrint()方法");
    //debugger(when: true);

    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
        body: Container(
          child: MaterialButton(
            color: Colors.green,
            onPressed: () {
              debugDumpApp();
            },
            child: Text("按钮"),
          ),
        ),
      ),
    );
  }
}
