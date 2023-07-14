import 'package:flutter/material.dart';
import 'package:flutterapp/assets/assets.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class CircleAvatarPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Center(
      child: CircleAvatar(
        foregroundColor: Colors.amber,
        child: Text("Av"),
        backgroundImage: AssetImage(Assets.icon),
        //foregroundImage: AssetImage(Assets.imagesIcon),
        //radius: 100,
        //maxRadius: 50,
        //minRadius: 30,
      ),
    );
  }

  @override
  String getTitle() {
    return "CircleAvatar";
  }
}
