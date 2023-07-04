import 'dart:developer';

import 'package:flutter/material.dart';

class LogoApp5 extends StatefulWidget {
  const LogoApp5({super.key});

  @override
  State<LogoApp5> createState() => _LogoApp5State();
}

class _LogoApp5State extends State<LogoApp5>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      })
      ..addStatusListener((status) => log('$status', name: 'AnimationStatus'));
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('同步动画'),
      ),
      body: Column(
        children: [
          _buildDescWidget(),
          _AnimatedLogo(animation: animation),
        ],
      ),
    );
  }

  Widget _buildDescWidget() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            title: Text('1. 使用 CurvedAnimation'),
          ),
          ListTile(
            title: Text('2. 展示了如何在同一个动画控制器中使用复合补间动画，每个补间动画控制一个动画的不同效果;\n'
                '修改 AnimatedLogo 来封装其 Tween 对象，以及其 build() 方法在母动画对象上调用 Tween.evaluate() 来计算所需的尺寸和不透明度值'),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class _AnimatedLogo extends AnimatedWidget {
  const _AnimatedLogo({super.key, required Animation<double> animation})
      : super(listenable: animation);

  // Make the Tweens static because they don't change.
  static final _opacityTween = Tween<double>(begin: 0.1, end: 1);
  static final _sizeTween = Tween<double>(begin: 0, end: 300);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Center(
      child: Opacity(
        opacity: _opacityTween.evaluate(animation),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: _sizeTween.evaluate(animation),
          width: _sizeTween.evaluate(animation),
          child: const FlutterLogo(),
        ),
      ),
    );
  }
}
