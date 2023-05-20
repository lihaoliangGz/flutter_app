import 'package:flutter/material.dart';
import 'package:flutterapp/dart/effective_document.dart';

import 'effective_design.dart';
import 'effective_style.dart';
import 'effective_usage.dart';

class EffectiveDart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Effective Dart"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("风格"),
            onTap: () {
              Navigator.of(context)
                  .push(new MaterialPageRoute(builder: (context) {
                return EffectiveStyle();
              }));
            },
          ),
          ListTile(
            title: Text("文档"),
            onTap: () {
              Navigator.of(context)
                  .push(new MaterialPageRoute(builder: (context) {
                return EffectiveDocument();
              }));
            },
          ),
          ListTile(
            title: Text("使用"),
            onTap: () {
              Navigator.of(context)
                  .push(new MaterialPageRoute(builder: (context) {
                return EffectiveUsageDemo();
              }));
            },
          ),
          ListTile(
            title: Text("设计"),
            onTap: () {
              Navigator.of(context)
                  .push(new MaterialPageRoute(builder: (context) {
                return EffectiveDesign();
              }));
            },
          ),
        ],
      ),
    );
  }
}
