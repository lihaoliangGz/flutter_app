import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class CardExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Card(
      borderOnForeground: true,
      //color: Colors.black12,
      elevation: 6,
      shadowColor: Colors.blue,
      margin: EdgeInsetsDirectional.all(10),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.white,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: SizedBox(
        width: 100,
        height: 200,
        child: Center(child: Text("atat")),
      ),
    );
  }

  @override
  String getTitle() {
    return "Card";
  }
}
