import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/flutter_widget/widgets/custom_scroll_view/custom_scroll_view_example.dart';

class CustomScrollViewApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("example1"),
          onTap: () {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => CustomScrollViewExample()));
          },
        )
      ],
    );
  }

  @override
  String getTitle() {
    return "CustomScrollView";
  }
}
