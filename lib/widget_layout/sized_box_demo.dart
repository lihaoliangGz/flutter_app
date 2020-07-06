import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class SizedBoxDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    return SizedBox(
      width: 200,
      height: 300,
      child: Card(
        child: Center(
          child: Text("Hello World!"),
        ),
      ),
    );
  }

  @override
  String getTitle() {
    return "SizedBox";
  }
}
