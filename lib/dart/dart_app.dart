import 'package:flutter/material.dart';
import 'package:flutterapp/dart/sdk/dart_sdk_page.dart';
import 'package:flutterapp/dart/typedef_demo.dart';

import 'effective_dart.dart';

class DartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dart"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Dart SDK"),
            onTap: () {
              Navigator.of(context)
                  .push(new MaterialPageRoute(builder: (context) {
                return DartSdkPage();
              }));
            },
          ),
          ListTile(
            title: Text("Typedefs"),
            onTap: () {
              Navigator.of(context)
                  .push(new MaterialPageRoute(builder: (context) {
                return TypedefDemo();
              }));
            },
          ),
          ListTile(
            title: Text("Effective Dart"),
            onTap: () {
              Navigator.of(context)
                  .push(new MaterialPageRoute(builder: (context) {
                return EffectiveDart();
              }));
            },
          ),
        ],
      ),
    );
  }
}
