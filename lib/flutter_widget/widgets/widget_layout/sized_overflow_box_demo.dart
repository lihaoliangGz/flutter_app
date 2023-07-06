import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class SizedOverflowBoxDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    //不理解布局原理
    return Container(
      color: Colors.green,
      alignment: Alignment.topLeft,
      width: 200.0,
      height: 200.0,
      child: SizedOverflowBox(
        size: Size(100.0, 200.0),
        //alignment: Alignment.topLeft,
        child: Container(
          color: Colors.blue,
          width: 200.0,
          height: 100.0,
        ),
      ),
    );
  }

  @override
  String getTitle() {
    return "SizedOverflowBox";
  }
}
