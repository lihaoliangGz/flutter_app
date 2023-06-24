import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class ElevatedButtonPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: Text("按钮"),
        autofocus: true,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black26,
            padding: EdgeInsetsDirectional.all(30),
            shadowColor: Colors.amberAccent),
      ),
    );
  }

  @override
  String getTitle() {
    return "ElevatedButton";
  }
}
