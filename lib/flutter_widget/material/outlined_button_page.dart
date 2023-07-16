import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class OutlinedButtonPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Center(
      child: Column(
        children: [
          OutlinedButton(
            onPressed: () {},
            child: Text("按钮"),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.account_circle_sharp),
            label: Text("按钮2"),
          ),
        ],
      ),
    );
  }

  @override
  String getTitle() {
    return "OutlinedButton";
  }
}
