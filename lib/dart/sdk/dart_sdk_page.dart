import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/dart/sdk/async/dart_async_page.dart';
import 'package:flutterapp/dart/sdk/core/dart_core_page.dart';

class DartSdkPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("async 异步编程"),
          onTap: () {
            Navigator.of(context)
                .push(new MaterialPageRoute(builder: (context) {
              return DartAsyncPage();
            }));
          },
        ),
        ListTile(
          title: Text("core"),
          onTap: () {
            Navigator.of(context)
                .push(new MaterialPageRoute(builder: (context) {
              return DartCorePage();
            }));
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "Dart SDK";
  }
}
