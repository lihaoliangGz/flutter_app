import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class GridViewCountExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      children: [
        Container(color: Colors.black12, child: Center(child: Text("data")))
      ],
    );
  }

  @override
  String getTitle() {
    return "GridView.count";
  }
}
