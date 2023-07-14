import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:fluttertoast/fluttertoast.dart';

///添加水波纹效果
class InkwellExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return new InkWell(
      onTap: () {
        final snackBar = new SnackBar(content: new Text("Tap"));
        Fluttertoast.showToast(
            msg: "Scaffold.of(context).showSnackBar(snackBar)");
        // Scaffold.of(context).showSnackBar(snackBar);
      },
      child: new Container(
        padding: new EdgeInsets.all(20),
        child: new Text("Button"),
      ),
    );
  }

  @override
  String getTitle() {
    return "InkWell";
  }
}
