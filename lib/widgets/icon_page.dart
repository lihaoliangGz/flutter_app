import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class IconPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.back_hand,
            size: 20,
          ),
          Icon(
            Icons.arrow_back_ios,
            size: 50,
            color: Colors.blueAccent,
          ),
          Icon(
            Icons.arrow_back_ios,
            size: 50,
            color: Colors.blueAccent,
            textDirection: TextDirection.rtl,

          ),
        ],
      ),
    );
  }

  @override
  String getTitle() {
    return "Icon";
  }
}
