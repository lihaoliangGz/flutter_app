import 'package:flutter/material.dart';

import 'package:flutterapp/base/BaseStatelessApp.dart';

class LimitedBoxDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Row(
      children: <Widget>[
        Container(
          color: Colors.red,
          width: 100,
        ),
        LimitedBox(
          //maxWidth: 150,
          child: Container(
            color: Colors.green,
            width: 250,
          ),
        )
      ],
    );
  }

  @override
  String getTitle() {
    return "LimitedBox";
  }
}
