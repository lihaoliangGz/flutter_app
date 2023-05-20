import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

///Effective dart-设计
class EffectiveDesign extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("命名"),
          onTap: () {},
        ),
        ListTile(
          title: Text("库"),
          onTap: () {},
        ),
        ListTile(
          title: Text("类"),
          onTap: () {},
        ),
        ListTile(
          title: Text("构造函数"),
          onTap: () {},
        ),
        ListTile(
          title: Text("成员"),
          onTap: () {},
        ),
        ListTile(
          title: Text("类型"),
          onTap: () {
            num s = highScore([1, 2, 3, 3.3]);
            print("highScore= $s");
          },
        ),
        ListTile(
          title: Text("参数"),
          onTap: () {},
        ),
        ListTile(
          title: Text("相等"),
          onTap: () {},
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "Effective dart-设计";
  }

  //===========类型============
  num highScore(List<num> scores) {
    num highest = 0;
    for (var score in scores) {
      if (score > highest) highest = score;
    }
    return highest;
  }

// num highScore(List<num> scores) {
//   var highest = 0;
//   for (var score in scores) {
//     if (score > highest) highest = score;
//   }
//   return highest;
// }
}
