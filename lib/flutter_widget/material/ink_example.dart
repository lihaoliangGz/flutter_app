import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class InkExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Material(
            color: Colors.teal[900],
            child: Center(
              child: Ink(
                color: Colors.yellow,
                width: 200.0,
                height: 100.0,
                child: InkWell(
                    onTap: () {
                      log('tap');
                    },
                    child: const Center(
                      child: Text('YELLOW'),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  String getTitle() {
    return 'Ink';
  }
}
