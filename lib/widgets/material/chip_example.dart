import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ChipExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Chip(
      avatar: CircleAvatar(
        backgroundColor: Colors.grey.shade800,
        child: const Text('AB'),
      ),
      backgroundColor: Colors.amber,
      deleteButtonTooltipMessage: "删除按钮",
      deleteIcon: Icon(Icons.delete),
      deleteIconColor: Colors.grey,
      onDeleted: () {
        Fluttertoast.showToast(msg: "点击删除");
      },
      label: Text("label"),
    );
  }

  @override
  String getTitle() {
    return "Chip";
  }
}
