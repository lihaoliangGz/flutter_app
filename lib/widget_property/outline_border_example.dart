import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class OutlineBorderExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Column(
      children: [_buildWidget(CircleBorder())],
    );
  }

  Widget _buildWidget(OutlinedBorder border) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('button'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: border,
      ),
    );
  }

  @override
  String getTitle() {
    return 'OutlineBorder';
  }
}
