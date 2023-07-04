import 'package:flutter/material.dart';
import 'package:flutterapp/animation/animated_logo.dart';

class LogoApp3 extends StatefulWidget {
  const LogoApp3({super.key});

  @override
  State<LogoApp3> createState() => _LogoApp3State();
}

class _LogoApp3State extends State<LogoApp3>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      })
      ..addStatusListener((status) => print('$status'));
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('监控动画过程')),
      body: Column(children: [
        _buildDescWidget(),
        AnimatedLogo(animation: animation),
      ]),
    );
  }

  Widget _buildDescWidget() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            title: Text('1. 使用 addStatusListener() 作为动画状态的变更提示，比如开始，结束，或改变方向。'),
          ),
          ListTile(
            title: Text('2. 通过在动画完成或返回起始状态时改变方向，使动画无限循环。'),
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
