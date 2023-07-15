import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class InkResponseExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Material(
      child: InkResponse(
        onTap: () {
          log('InkResponse, tap');
        },
        child: Container(
          width: 300,
          height: 200,
          color: Colors.yellow,
        ),
      ),
    );
  }

  @override
  String getTitle() {
    return 'InkResponse';
  }
}
