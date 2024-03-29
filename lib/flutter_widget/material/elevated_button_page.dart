import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class ElevatedButtonPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text("ElevatedButton"),
            autofocus: true,
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black26,
                // padding: EdgeInsetsDirectional.all(30),
                shadowColor: Colors.amberAccent),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.ac_unit_sharp),
            label: Text('label'),
          )
        ],
      ),
    );
  }

  @override
  String getTitle() {
    return "ElevatedButton";
  }
}
