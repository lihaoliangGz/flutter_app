import 'package:flutter/material.dart';
import 'package:flutterapp/for_android/views_paint.dart';

class FlutterForAndroid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter for android 开发者"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Text("Views"),
            padding: new EdgeInsets.symmetric(vertical: 10),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ViewsPaintDemo();
              }));
            },
            child: Text("如何使用Canvas draw/paint"),
          )
        ],
      ),
    );
  }
}
