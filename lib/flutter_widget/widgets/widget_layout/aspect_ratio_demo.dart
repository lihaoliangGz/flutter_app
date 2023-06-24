import 'package:flutter/material.dart';

import 'package:flutterapp/base/BaseStatelessApp.dart';

class AspectRatioDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Container(
      height: 200,
      color: Colors.green[50],
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }

  @override
  String getTitle() {
    return "AspectRatio";
  }
}
