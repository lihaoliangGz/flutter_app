import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:fluttertoast/fluttertoast.dart';

var number3 = 11; //修改后, 热重载不生效 (全局变量)
const number4 = 12;  //修改后,热重载生效

class ReloadPage extends BaseStatelessApp {
  static var number = 2; //修改后, 热重载不生效 (静态字段)
  var number2 = 5; //修改后,热重载生效

  @override
  Widget getBody() {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Fluttertoast.showToast(msg: "$number");
          },
          child: Text("show"),
        ),
        ElevatedButton(
          onPressed: () {
            Fluttertoast.showToast(msg: "$number2");
          },
          child: Text("show2"),
        ),
        ElevatedButton(
          onPressed: () {
            Fluttertoast.showToast(msg: "$number3");
          },
          child: Text("show3"),
        ),
        ElevatedButton(
          onPressed: () {
            Fluttertoast.showToast(msg: "$number4");
          },
          child: Text("show4"),
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "热重载";
  }
}
