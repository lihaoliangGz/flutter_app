import 'dart:math';

import 'package:flutter/material.dart';

/// AnimatedContainer
///
/// 与 Container 一样， AnimatedContainer 也可以设置它的宽度、高度以及背景颜色等等。
/// 但是 AnimatedContainer 在使用新属性进行重建时，将会自动在旧值和新值之间生成动画。这种动画在 Flutter 中被称为 “隐式动画”。
class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AnimatedContainer'),
        ),
        body: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 600),
            width: _width,
            height: _height,
            color: _color,
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                var random = Random();
                _width = random.nextInt(200).toDouble();
                _height = random.nextInt(200).toDouble();
                _color = Color.fromRGBO(
                  random.nextInt(255),
                  random.nextInt(255),
                  random.nextInt(255),
                  1,
                );
              });
            },
            child: Icon(Icons.play_arrow)),
      ),
    );
  }
}
