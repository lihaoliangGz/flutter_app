import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class SizedOverflowBoxDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    //todo ??
    return Container(
      color: Colors.green,
      alignment: Alignment.topRight,
      width: 200.0,
      height: 200.0,
      padding: EdgeInsets.all(5.0),
      child: SizedOverflowBox(
        size: Size(100.0, 200.0),
        child: Container(
          color: Colors.red,
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
