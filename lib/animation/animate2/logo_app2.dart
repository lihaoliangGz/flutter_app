import 'package:flutter/material.dart';
import 'package:flutterapp/animation/animated_logo.dart';

class LogoApp2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LogoApp2State();
  }
}

class _LogoApp2State extends State<LogoApp2>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = Tween(begin: 0.0, end: 300.0).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('使用 AnimatedWidget 进行简化'),
      ),
      body: Column(
        children: [
          _buildDescWidget(),
          AnimatedLogo(animation: animation),
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
            title: Text(
                '1. 使用 AnimatedWidget 帮助类（代替 addListener() 和 setState()）创建动画 widget'),
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
