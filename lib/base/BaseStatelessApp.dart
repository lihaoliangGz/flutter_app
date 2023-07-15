import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

abstract class BaseStatelessApp extends StatelessWidget {
  late final BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    debugPaintSizeEnabled = false;
    return Scaffold(
      appBar: AppBar(
        title: Text(getTitle()),
      ),
      body: getBody(),
    );
  }

  String getTitle();

  Widget getBody();
}
