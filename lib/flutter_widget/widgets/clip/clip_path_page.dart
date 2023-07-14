import 'package:flutter/material.dart';
import 'package:flutterapp/assets/assets.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class ClipPathPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: ClipPath(
              clipper: __MyPathClipper(),
              child: Image.asset(
                Assets.icon,
              ),
            ),
          ),
          Center(
            child: ClipPath.shape(
              shape: CircleBorder(),
              child: Image.asset(Assets.icon),
            ),
          ),
        ],
      ),
    );
  }

  @override
  String getTitle() {
    return "ClipPath";
  }
}

class __MyPathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width / 2, 0); //从图片的中间上面坐标
    path.lineTo(0, size.height); //图片的左下角坐标
    path.lineTo(size.width, size.height); //图片的右下角左边
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
