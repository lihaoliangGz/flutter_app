import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/dart/sdk/async/timer_example.dart';

class DartAsyncPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("Timer"),
          onTap: () {
            Navigator.of(context)
                .push(new MaterialPageRoute(builder: (context) {
              return TimerExample();
            }));
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "async 异步编程";
  }
}
