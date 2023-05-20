import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class TransformDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Center(
      child: Transform(
        transform: Matrix4.rotationZ(0.5),
        child: Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(8.0),
          color: Color(0xFFE8581C),
          child: Text("Apartment for rent!"),
        ),
      ),
    );
  }

  @override
  String getTitle() {
    return "Transform";
  }
}
