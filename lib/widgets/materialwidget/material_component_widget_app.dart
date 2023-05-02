import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/widgets/materialwidget/app_bar_page.dart';
import 'package:flutterapp/widgets/materialwidget/material_app_page.dart';

class MaterialComponentWidgetApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 60,
          color: Color(0XFFCCCCCC),
          alignment: AlignmentDirectional.centerStart,
          child: Text("App structure and navigation"),
        ),
        ListTile(
          title: Text("MaterialApp"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MaterialAppPage()),
            );
          },
        ),
        ListTile(
          title: Text("Appbar"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AppBarPage()),
            );
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "Material Components widgets";
  }
}
