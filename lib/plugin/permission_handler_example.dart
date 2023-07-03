import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';

import '../base/BaseStatelessApp.dart';

class PermissionHandlerExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return NotificationListener(
      onNotification: (ScrollNotification note) {
        return true;
      },
      child: ListView(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              checkPermission();
            },
            child: Text("相机权限"),
          ),
          ElevatedButton(
            onPressed: () {
              checkLocationPermission();
            },
            child: Text("定位权限"),
          ),
        ],
      ),
    );
  }

  checkPermission() async {
    var status = Permission.camera.status;
    if (await status.isDenied) {
      Fluttertoast.showToast(msg: 'Denied');
    }
    if (await Permission.camera.request().isGranted) {
      //do something
    }
  }

  checkLocationPermission() async {
    PermissionStatus status = await Permission.location.status;
    handlePermissionStatus(status);
    var permissionStatus = await Permission.location.request();
    handlePermissionStatus(permissionStatus);
  }

  void handlePermissionStatus(PermissionStatus status) async {
    if (status.isRestricted) {
      log('isRestricted', name: 'PermissionStatus');
    } else if (status.isLimited) {
      log('isLimited', name: 'PermissionStatus');
    } else if (status.isPermanentlyDenied) {
      log('isPermanentlyDenied', name: 'PermissionStatus');
      await Permission.location.shouldShowRequestRationale;
    } else if (status.isDenied) {
      log('isDenied', name: 'PermissionStatus');
    } else if (status.isGranted) {
      log('isGranted', name: 'PermissionStatus');
    }
  }

  @override
  String getTitle() {
    return "permission_handler";
  }
}
