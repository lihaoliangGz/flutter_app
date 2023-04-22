import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'base/BaseStatelessApp.dart';

class PermissionDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    return NotificationListener(
      onNotification: (ScrollNotification note) {
        return true;
      },
      child: ListView(
        children: <Widget>[
          Container(
              height: 50,
              child: MaterialButton(
                color: Colors.green,
                onPressed: () {
                  checkPremission();
                },
                child: Text("相机权限"),
              )),
        ],
      ),
    );
  }

  checkPremission() async {
    var status = Permission.camera.status;
    if (await status.isDenied) {
      print("isDenied");
    }
    if (await Permission.camera.request().isGranted) {
      //do something
    }
  }

  @override
  String getTitle() {
    return "权限";
  }
}
