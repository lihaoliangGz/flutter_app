import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class FittedBoxDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Container(
      width: 300,
      height: 500,
      color: Colors.green[50],
      child: FittedBox(
        fit: BoxFit.scaleDown,
        //alignment:Alignment.topRight,
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
  }

  @override
  String getTitle() {
    return "FittedBox";
  }
}
