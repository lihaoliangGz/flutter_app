import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TimerExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Timer.run(() {
              Fluttertoast.showToast(msg: "timer run");
            });
          },
          child: Text("run()"),
        ),
        ElevatedButton(
          onPressed: () {
            var timer = Timer(Duration(seconds: 3), () {
              Fluttertoast.showToast(msg: "new Timer 3 seconds callback");
            });
            timer.isActive;
            Fluttertoast.showToast(
                msg: "new Timer, isActive=${timer.isActive}");
          },
          child: Text("new Timer"),
        ),
        ElevatedButton(
          onPressed: () {
            Timer.periodic(Duration(seconds: 1), (timer) {
              Fluttertoast.showToast(msg: "tick=${timer.tick}");
            });
          },
          child: Text("periodic Timer"),
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "Timer";
  }
}
