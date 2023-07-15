import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:fluttertoast/fluttertoast.dart';

///添加水波纹效果
class InkwellExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Fluttertoast.showToast(
                msg: "Scaffold.of(context).showSnackBar(snackBar)");
          },
          child: new Container(
            padding: new EdgeInsets.all(20),
            child: new Text("Button"),
          ),
        ),
        const SizedBox(height: 20),
        InkWell(
          onTap: () {
            Fluttertoast.showToast(
                msg: "Scaffold.of(context).showSnackBar(snackBar)");
          },
          child: new Container(
            padding: new EdgeInsets.all(5),
            child: new Text("Button2"),
          ),
          //highlightColor: Colors.grey,
          splashColor: Colors.yellow,
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "InkWell";
  }
}
