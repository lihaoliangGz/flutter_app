import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class LimitedBoxDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Column(
      children: [
        //当窗口widget的父级约束大小时，LimitedBox无效
        Container(
          width: 300,
          height: 300,
          child: LimitedBox(
            maxWidth: 150,
            maxHeight: 150,
            child: Container(
              color: Colors.green,
            ),
          ),
        ),
        SizedBox(height: 50),
        Expanded(
          child: Row(
            children: <Widget>[
              Container(
                color: Colors.blue,
                width: 100,
              ),
              LimitedBox(
                maxWidth: 150,
                child: Container(
                  color: Colors.green,
                  width: 250,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "LimitedBox";
  }
}
