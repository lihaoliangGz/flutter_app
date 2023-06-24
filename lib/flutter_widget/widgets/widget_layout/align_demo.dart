import 'package:flutter/material.dart';

import 'package:flutterapp/base/BaseStatelessApp.dart';

class AlignDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
//    return Container(
//      width: 240,
//      height: 240,
//      color: Colors.blue[50],
//      child: Align(
//        child: FlutterLogo(
//          size: 60,
//        ),
//        //widthFactor: 1.5,
//        //heightFactor: 1.5,
//        alignment: Alignment(0.2, 0.6),
//      ),
//    );
    return Align(
      child: FlutterLogo(
        size: 60,
      ),
      //widthFactor: 1.5,
      //heightFactor: 1.5,
      alignment: Alignment(0.3, 0.6),
    );
  }

  @override
  String getTitle() {
    return "Align";
  }
}
