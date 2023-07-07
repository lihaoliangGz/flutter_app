import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:toast/toast.dart';

class ToastExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return TextButton(
        onPressed: () {
          ToastContext().init(context);
          Toast.show(
            'content',
            duration: Toast.lengthLong,
            gravity: Toast.center,
          );
        },
        child: Text('toast'));
  }

  @override
  String getTitle() {
    return 'toast';
  }
}
