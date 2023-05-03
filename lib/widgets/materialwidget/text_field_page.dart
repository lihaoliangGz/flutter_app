import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class TextFieldPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Center(
      child: TextField(
        autofocus: true,
        cursorColor: Colors.amber,
        cursorHeight: 30,
        cursorRadius: Radius.circular(3),
        cursorWidth: 6,
        decoration: InputDecoration(),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        keyboardType: TextInputType.phone,
      ),
    );
  }

  @override
  String getTitle() {
    return "TextField";
  }
}
