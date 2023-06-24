import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class ShowDialogExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ElevatedButton(
      onPressed: () {
        _showDialog();
      },
      child: Text('showDialog'),
    );
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Text('Hello World');
      },
    );
  }

  @override
  String getTitle() {
    return 'showDialog';
  }
}
