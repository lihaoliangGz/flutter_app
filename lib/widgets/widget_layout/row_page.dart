import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class RowPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Row(
      textDirection: TextDirection.rtl,
      // mainAxisAlignment: ,
      // crossAxisAlignment: ,
      // mainAxisSize: ,
      verticalDirection: VerticalDirection.up,
      children: <Widget>[
        Expanded(
          child: Text('Deliver features faster', textAlign: TextAlign.center),
        ),
        Expanded(
          child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain, // otherwise the logo will be tiny
            child: const FlutterLogo(),
          ),
        )
      ],
    );
  }

  @override
  String getTitle() {
    return "Row";
  }
}
