import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/flutter_widget/cupertino/cupertino_picker_example.dart';

class CupertinoWidgetsApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("CupertinoPicker"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CupertinoPickerExample()),
            );
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "iOS 风格 widgets 列表";
  }
}
