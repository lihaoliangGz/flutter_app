import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class OverflowBoxDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.all(10),
      height: 200,
      width: 200,
      child: OverflowBox(
        maxHeight: 250,
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
