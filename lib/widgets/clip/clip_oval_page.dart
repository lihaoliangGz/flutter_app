import 'package:flutter/cupertino.dart';
import 'package:flutterapp/assets/assets.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class ClipOvalPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Center(
      child: ClipOval(
        child: Image.asset(
          Assets.imagesIcon,
          fit: BoxFit.cover,
          width: 100,
          height: 50,
        ),
      ),
    );
  }

  @override
  String getTitle() {
    return "ClipOval";
  }
}
