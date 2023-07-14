import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterapp/assets/assets.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class FlutterSvgExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Center(
      child: Container(
        height: 100,
        child: SvgPicture.asset(
          Assets.iconSvg,
          color: Color(0xff08BF64),
        ),
      ),
    );
  }

  @override
  String getTitle() {
    return 'flutter_svg';
  }
}
