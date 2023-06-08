import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class ShowGeneralDialogExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return TextButton(
      onPressed: () {
        _showDialog();
      },
      child: Text('show'),
    );
  }

  void _showDialog() {
    showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Text('Hello World'),
        );
      },
    );
  }

  @override
  String getTitle() {
    return "ShowGeneralDialog";
  }
}
