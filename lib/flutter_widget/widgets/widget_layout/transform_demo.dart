import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class TransformDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Transform(
            transform: Matrix4.rotationZ(0.5),
            child: _buildContainer(),
          ),
          SizedBox(height: 30),
          Transform.rotate(
            angle: 20,
            child: _buildContainer(),
          ),
          SizedBox(height: 30),
          Transform.scale(
            scale: 1.3,
            child: _buildContainer(),
          ),
          SizedBox(height: 30),
          Transform.translate(
            offset: Offset(50, 50),
            child: _buildContainer(),
          ),
        ],
      ),
    );
  }

  Widget _buildContainer() {
    return Container(
      width: 70,
      height: 70,
      padding: const EdgeInsets.all(8.0),
      color: Color(0xFFE8581C),
      child: Text("Apartment for rent!"),
    );
  }

  @override
  String getTitle() {
    return "Transform";
  }
}
