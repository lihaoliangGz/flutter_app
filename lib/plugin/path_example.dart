import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:path/path.dart';

class PathExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            var result = join('directory', 'file.txt');
            print("join, result=${result}");
          },
          child: Text("join"),
        ),
        ElevatedButton(
          onPressed: () {
            var context = Context(style: Style.windows);
            var result = context.join('directory', 'file.txt');
            print("context.join, result=${result}");
          },
          child: Text("context.join"),
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "path";
  }
}
