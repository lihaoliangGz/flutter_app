
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/widget_property/outline_border_example.dart';

class WidgetPropertyApp extends BaseStatelessApp{
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("OutlineBorder"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OutlineBorderExample()),
            );
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return 'Widget Property';
  }

}