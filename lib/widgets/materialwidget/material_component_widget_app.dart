import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/widgets/materialwidget/app_bar_page.dart';
import 'package:flutterapp/widgets/materialwidget/card_example.dart';
import 'package:flutterapp/widgets/materialwidget/elevated_button_page.dart';
import 'package:flutterapp/widgets/materialwidget/material_app_page.dart';
import 'package:flutterapp/widgets/materialwidget/outlined_button_page.dart';
import 'package:flutterapp/widgets/materialwidget/text_field_page.dart';

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
        Container(
          width: double.infinity,
          height: 60,
          color: Color(0XFFCCCCCC),
          alignment: AlignmentDirectional.centerStart,
          child: Text("Buttons"),
        ),
        ListTile(
          title: Text("ElevatedButton"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ElevatedButtonPage()),
            );
          },
        ),
        ListTile(
          title: Text("OutlinedButton"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OutlinedButtonPage()),
            );
          },
        ),
        Container(
          width: double.infinity,
          height: 60,
          color: Color(0XFFCCCCCC),
          alignment: AlignmentDirectional.centerStart,
          child: Text("Input and selections"),
        ),
        ListTile(
          title: Text("TextField"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TextFieldPage()),
            );
          },
        ),
        Container(
          width: double.infinity,
          height: 60,
          color: Color(0XFFCCCCCC),
          alignment: AlignmentDirectional.centerStart,
          child: Text("Information displays"),
        ),
        ListTile(
          title: Text("Card"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CardExample()),
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
