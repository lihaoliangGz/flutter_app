import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class CenterDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Center(
      heightFactor: 2,
      widthFactor: 2,
      child: Text('Hello World'),
    );
  }

  @override
  String getTitle() {
    return "Center";
  }
}
