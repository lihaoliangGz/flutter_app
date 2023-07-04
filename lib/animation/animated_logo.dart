import 'package:flutter/material.dart';

/// 1. 使用 AnimatedWidget 帮助类（代替 addListener() 和 setState()）创建动画 widget。
class AnimatedLogo extends AnimatedWidget {
  AnimatedLogo({required Animation<double> animation})
      : super(listenable: animation);

  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Material(
      child: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: animation.value,
          width: animation.value,
          child: FlutterLogo(),
        ),
      ),
    );
  }
}
