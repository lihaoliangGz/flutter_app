import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

///Effective dart-文档
class EffectiveDocument extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("注释"),
          onTap: () {},
        ),
        ListTile(
          title: Text("文档注释"),
          onTap: () {},
        ),
        ListTile(
          title: Text("Markdown"),
          onTap: () {},
        ),
        ListTile(
          title: Text("如何写注释"),
          onTap: () {},
        )
      ],
    );
  }

  @override
  String getTitle() {
    return "Effective dart-文档";
  }
}
