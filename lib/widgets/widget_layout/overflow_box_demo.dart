import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class OverflowBoxDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Container(
      color: Colors.red,
      padding: EdgeInsets.all(10),
      height: 200,
      width: 200,
      child: OverflowBox(
        maxHeight: 250, //不能小于父容器的高度180
        child: Container(
          color: Colors.green,
          width: 100,
          height: 600,
        ),
      ),
    );
  }

  @override
  String getTitle() {
    return "OverflowBox";
  }
}
