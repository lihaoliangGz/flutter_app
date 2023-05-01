import 'package:flutter/cupertino.dart';
import 'package:flutterapp/assets/assets.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class ExpandedPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Center(
      child: Column(
        children: [
          Expanded(child: Image.asset(Assets.imagesIcon), flex: 2),
          Expanded(child: Image.asset(Assets.imagesIcon)),
          Expanded(child: Image.asset(Assets.imagesIcon))
        ],
      ),
    );
  }

  @override
  String getTitle() {
    return "";
  }
}
