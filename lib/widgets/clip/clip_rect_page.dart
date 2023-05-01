import 'package:flutter/material.dart';
import 'package:flutterapp/assets/assets.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class ClipRectPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return SizedBox(
      width: 200,
      child: Column(
        children: [
          ClipRect(
            child: Align(
              alignment: Alignment.topLeft,
              heightFactor: 1,
              child: Image.asset(
                Assets.imagesIcon,
              ),
            ),
          ),
          ClipRect(
            child: Align(
                alignment: Alignment.topLeft,
                heightFactor: 0.5,
                child: Image.asset(
                  Assets.imagesIcon,
                )),
          ),
          Align(
              alignment: Alignment.topLeft,
              heightFactor: 1,
              child: Image.asset(
                Assets.imagesIcon,
              )),
          Align(
              alignment: Alignment.topLeft,
              heightFactor: 0.5,
              child: Image.asset(
                Assets.imagesIcon,
              ))
        ],
      ),
    );
  }

  @override
  String getTitle() {
    return "ClipRect";
  }
}
