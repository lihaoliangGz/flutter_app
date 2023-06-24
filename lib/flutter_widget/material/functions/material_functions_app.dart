import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/flutter_widget/material/functions/show_dialog_example.dart';

class MaterialFunctionsApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("showDialog"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ShowDialogExample()),
            );
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return 'Material Functions';
  }
}
