import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/widgets/functions/show_general_dialog_example.dart';

class WidgetsFunctionsApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("showGeneralDialog"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ShowGeneralDialogExample(),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "Widgets Functions";
  }
}
