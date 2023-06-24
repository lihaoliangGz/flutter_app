import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class ColumnPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      verticalDirection: VerticalDirection.up,
      textDirection: TextDirection.rtl,
      children: <Widget>[
        Text('Deliver features faster'),
        Text('Craft beautiful UIs'),
        Expanded(
          child: FittedBox(
            fit: BoxFit.contain, // otherwise the logo will be tiny
            child: const FlutterLogo(),
          ),
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "Column";
  }
}
