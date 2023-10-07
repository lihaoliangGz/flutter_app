import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class gridViewBuilderExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return GridView.builder(
      gridDelegate: gridDelegate,
      itemBuilder: (context, index) {
        return Container(
            color: Colors.black12, child: Center(child: Text("data")));
      },
    );
  }

  @override
  String getTitle() {
    return 'GridView.builder';
  }
}
