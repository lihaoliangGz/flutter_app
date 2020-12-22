import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

///Effective-dart 风格
class EffectiveStyle extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("标识符"),
          onTap: () {},
        ),
        ListTile(
          title: Text("顺序"),
          onTap: () {},
        ),
        ListTile(
          title: Text("格式化"),
          onTap: () {},
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "Effective-dart 风格";
  }
}
