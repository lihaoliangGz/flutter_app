import 'package:flutter/material.dart';

///Flutter的布局方法

class LayoutMethodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(color: Colors.white),
      child: new Center(
        child: new Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Icon(Icons.star, color: Colors.green[500])
          ],
        ),
      ),
    );
  }
}
