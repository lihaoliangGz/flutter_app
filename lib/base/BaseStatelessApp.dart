import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

abstract class BaseStatelessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    debugPaintSizeEnabled = false;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(getTitle()),
        ),
        body: getBody(),
      ),
    );
  }

  String getTitle();

  Widget getBody();
}
