import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/dart/sdk/core/date_time_example.dart';

class DartCorePage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("DateTime"),
          onTap: () {
            Navigator.of(context)
                .push(new MaterialPageRoute(builder: (context) {
              return DateTimeExample();
            }));
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "core";
  }
}
