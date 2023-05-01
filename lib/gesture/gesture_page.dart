import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:fluttertoast/fluttertoast.dart';

///GestureDetector widget
class GesturePage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return new Center(
      child: new GestureDetector(
        onTap: () {
          final snackBar = new SnackBar(content: new Text("Tap"));
          Fluttertoast.showToast(
              msg: "Scaffold.of(context).showSnackBar(snackBar)");
          //Scaffold.of(context).showSnackBar(snackBar);
        },
        child: new Container(
          height: 200,
          width: 300,
          padding: new EdgeInsets.all(12),
          decoration: new BoxDecoration(
              color: Theme.of(context).buttonColor,
              borderRadius: new BorderRadius.circular(8)),
          child: new Text("My Button"),
        ),
      ),
    );
  }

  @override
  String getTitle() {
    return "";
  }
}
