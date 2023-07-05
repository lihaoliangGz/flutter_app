import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class ConstrainedBoxDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
              minWidth: 80, minHeight: 80, maxWidth: 80, maxHeight: 80),
          child: Card(
            child: Text("Hello World!"),
          ),
        ),
        Container(
          height: 200,
          child: ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: const Card(child: Text('Hello World!')),
          ),
        ),
        Container(
          height: 200,
          child: SizedBox.expand(
            child: const Card(child: Text('Hello World!')),
          ),
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "ConstrainedBox";
  }
}
