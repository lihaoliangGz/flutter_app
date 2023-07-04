import 'package:flutter/material.dart';
import 'package:flutterapp/animation/animate1/logo_app1.dart';
import 'package:flutterapp/animation/animate2/logo_app2.dart';
import 'package:flutterapp/animation/animate3/logo_app3.dart';
import 'package:flutterapp/animation/animate4/logo_app4.dart';
import 'package:flutterapp/animation/animate5/logo_app5.dart';
import 'package:flutterapp/animation/animated_container_example.dart';
import 'package:flutterapp/animation/animated_opacity_example.dart';

class AnimationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter中的动画"),
        ),
        body: ListView(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return LogoApp1();
                }));
              },
              child: Text("渲染动画 - animate1"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return LogoApp2();
                }));
              },
              child: Text("使用 AnimatedWidget 进行简化 - animate2"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return LogoApp3();
                }));
              },
              child: Text("监控动画过程 - animate3"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return LogoApp4();
                }));
              },
              child: Text('使用 AnimatedBuilder 进行重构 - animate4'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return LogoApp5();
                }));
              },
              child: Text('同步动画 - animate5'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return AnimatedOpacityExample();
                }));
              },
              child: Text('AnimatedOpacity'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return AnimatedContainerExample();
                }));
              },
              child: Text('AnimatedContainer'),
            ),
          ],
        ),
      ),
    );
  }
}
