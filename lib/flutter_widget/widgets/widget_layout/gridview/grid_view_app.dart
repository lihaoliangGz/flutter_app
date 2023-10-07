import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/flutter_widget/widgets/widget_layout/gridview/grid_view_count_example.dart';

class GridViewApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("GridView.count"),
          onTap: () {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => GridViewCountExample()));
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
