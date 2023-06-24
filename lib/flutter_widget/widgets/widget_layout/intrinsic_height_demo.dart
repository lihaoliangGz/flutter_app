import 'package:flutter/material.dart';

import 'package:flutterapp/base/BaseStatelessApp.dart';

class IntrinsicHeightDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        //没有IntrinsicHeight包裹
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              color: Colors.red,
              width: 50,
            ),
            Container(
              color: Colors.green,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.blue,
              width: 50,
            )
          ],
        ),

        //有IntrinsicHeight包裹
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                color: Colors.red,
                width: 50,
              ),
              Container(
                color: Colors.green,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.blue,
                width: 50,
              )
            ],
          ),
        ),
      ],
    );

//    return Container(
//      padding: EdgeInsets.symmetric(vertical: 20),
//      color: Colors.grey,
//      child: Text("Hello World"),
//    );
  }

  @override
  String getTitle() {
    return "IntrinsicHeight";
  }
}
