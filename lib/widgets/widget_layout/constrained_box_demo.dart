import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class ConstrainedBoxDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: 80, minHeight: 80, maxWidth: 80, maxHeight: 80),
      child: Card(
        child: Text("Hello World!"),
      ),
    );
  }

  @override
  String getTitle() {
    return "ConstrainedBox";
  }
}
