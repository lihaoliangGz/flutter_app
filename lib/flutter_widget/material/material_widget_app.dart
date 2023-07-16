import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/flutter_widget/material/app_bar_page.dart';
import 'package:flutterapp/flutter_widget/material/card_example.dart';
import 'package:flutterapp/flutter_widget/material/chip_example.dart';
import 'package:flutterapp/flutter_widget/material/elevated_button_page.dart';
import 'package:flutterapp/flutter_widget/material/functions/material_functions_app.dart';
import 'package:flutterapp/flutter_widget/material/icon_button_example.dart';
import 'package:flutterapp/flutter_widget/material/ink_example.dart';
import 'package:flutterapp/flutter_widget/material/ink_response_example.dart';
import 'package:flutterapp/flutter_widget/material/inkwell_example.dart';
import 'package:flutterapp/flutter_widget/material/material_app_page.dart';
import 'package:flutterapp/flutter_widget/material/outlined_button_page.dart';
import 'package:flutterapp/flutter_widget/material/switch_example.dart';
import 'package:flutterapp/flutter_widget/material/text_button_example.dart';
import 'package:flutterapp/flutter_widget/material/text_field_page.dart';

class MaterialWidgetApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("Ink"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InkExample()),
            );
          },
        ),
        ListTile(
          title: Text("Inkwell"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InkwellExample()),
            );
          },
        ),
        ListTile(
          title: Text("InkResponse"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InkResponseExample()),
            );
          },
        ),
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
          title: Text("TextButton"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TextButtonExample()),
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
        ListTile(
          title: Text("IconButton"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => IconButtonExample()),
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
