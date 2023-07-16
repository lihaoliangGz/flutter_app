import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class TextButtonExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Center(
      child: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text("文本按钮"),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.ac_unit_sharp),
            label: Text('label'),
          )
        ],
      ),
    );
  }

  @override
  String getTitle() {
    return 'TextButton';
  }
}
