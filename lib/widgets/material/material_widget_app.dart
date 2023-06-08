import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/widgets/material/app_bar_page.dart';
import 'package:flutterapp/widgets/material/card_example.dart';
import 'package:flutterapp/widgets/material/chip_example.dart';
import 'package:flutterapp/widgets/material/elevated_button_page.dart';
import 'package:flutterapp/widgets/material/functions/material_functions_app.dart';
import 'package:flutterapp/widgets/material/material_app_page.dart';
import 'package:flutterapp/widgets/material/outlined_button_page.dart';
import 'package:flutterapp/widgets/material/switch_example.dart';
import 'package:flutterapp/widgets/material/text_field_page.dart';

class MaterialWidgetApp extends BaseStatelessApp {
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
          child: Text("Selection"),
        ),
        ListTile(
          title: Text("Switch"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SwitchExample()),
            );
          },
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
        ListTile(
          title: Text("Chip"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChipExample()),
            );
          },
        ),
        Container(
          width: double.infinity,
          height: 60,
          color: Color(0XFFCCCCCC),
          alignment: AlignmentDirectional.centerStart,
          child: Text("FUNCTIONS"),
        ),
        ListTile(
          title: Text("material functions"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MaterialFunctionsApp()),
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
