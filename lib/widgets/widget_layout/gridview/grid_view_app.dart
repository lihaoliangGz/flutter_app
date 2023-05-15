import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/widgets/widget_layout/gridview/grid_view_count_page.dart';

class GridViewApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("GridView.count"),
          onTap: () {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => GridViewCountPage()));
          },
        )
      ],
    );
  }

  @override
  String getTitle() {
    return "GridView";
  }
}
