import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class AspectRatioDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Container(
      height: 100,
      width: double.infinity,
      alignment: Alignment.center,
      color: Colors.green,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          color: Colors.blue,
        ),
      ),
    );
  }

  @override
  String getTitle() {
    return "AspectRatio";
  }
}
