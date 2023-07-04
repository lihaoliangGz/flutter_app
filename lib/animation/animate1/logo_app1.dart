import 'package:flutter/material.dart';

class LogoApp1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LogoApp1State();
  }
}

class _LogoApp1State extends State<LogoApp1>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = Tween(begin: 0.0, end: 300.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('渲染动画'),
      ),
      body: Column(
        children: [
          _buildDescWidget(),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: animation.value,
              width: animation.value,
              child: FlutterLogo(),
            ),
          ),
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
                '1. 使用Animation 和 AnimationController, 在addListener() 函数中调用setState'),
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
