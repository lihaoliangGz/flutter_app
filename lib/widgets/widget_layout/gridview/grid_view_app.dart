import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class GridViewApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text(""),
          onTap: () {
            // Navigator.of(context).push(
            //     new MaterialPageRoute(builder: (context) => RowPage()));
          },
        )
      ],
    );
  }

  @override
  String getTitle() {
    return "GridView";
  }
}
