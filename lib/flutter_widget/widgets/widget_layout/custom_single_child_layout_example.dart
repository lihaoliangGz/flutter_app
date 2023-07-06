import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class CustomSingleChildLayoutExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Center(
      child: CustomSingleChildLayout(
        delegate: MyLayoutDelegate(),
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
        ),
      ),
    );
  }

  @override
  String getTitle() {
    return 'CustomSingleChildLayout';
  }
}

class MyLayoutDelegate extends SingleChildLayoutDelegate {
  final Size size = Size(100, 100);

  @override
  Size getSize(BoxConstraints constraints) {
    return size;
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints.tight(size);
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    log("size:$size, childSize:$childSize");
    return Offset(50, 50);
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) {
    return false;
  }
}
