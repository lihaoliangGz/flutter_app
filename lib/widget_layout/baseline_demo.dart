import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class BaselineDemo extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Row(
      children: <Widget>[
        Baseline(
          baseline: 100,
          baselineType: TextBaseline.alphabetic,
          child: Text(
            "Hello ",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Baseline(
          baseline: 100,
          baselineType: TextBaseline.alphabetic,
          child: Text(
            "World",
            style: TextStyle(fontSize: 80),
          ),
        )
      ],
    );
  }

  @override
  String getTitle() {
    return "baseline";
  }
}
