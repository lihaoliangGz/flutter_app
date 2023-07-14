import 'package:flutter/material.dart';
import 'package:flutterapp/assets/assets.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class ExpandedPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Center(
      child: Column(
        children: [
          Expanded(child: Image.asset(Assets.icon), flex: 2),
          Expanded(child: Image.asset(Assets.icon)),
          Expanded(child: Image.asset(Assets.icon))
        ],
      ),
    );
  }

  @override
  String getTitle() {
    return "";
  }
}
