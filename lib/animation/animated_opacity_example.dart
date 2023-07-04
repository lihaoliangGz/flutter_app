import 'package:flutter/material.dart';

/// 透明度动画
class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AnimatedOpacity-透明度动画'),
        ),
        body: Center(
          child: AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: Duration(seconds: 3),
            child: Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _visible = !_visible;
            });
          },
          child: Icon(Icons.flip),
        ),
      ),
    );
  }
}
