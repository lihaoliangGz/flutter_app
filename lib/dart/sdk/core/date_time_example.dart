import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class DateTimeExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {

            var now = DateTime.now();
            log('now: $now', name: "DateTime");
            log('toIso8601String: ${now.toIso8601String()}', name: "DateTime");
            log('toUtc: ${now.toUtc()}', name: "DateTime");
            ;

            var utc = DateTime.utc(2023, 6, 30, 20, 30);
            var utc1 = DateTime.utc(2023);
            log('utc: $utc', name: "DateTime");
            log('utc1: $utc1', name: "DateTime");


          },
          child: Text("click"),
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return 'DateTime';
  }
}
