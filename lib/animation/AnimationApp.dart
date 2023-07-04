import 'package:flutter/material.dart';
import 'package:flutterapp/animation/animated_container_example.dart';
import 'package:flutterapp/animation/animated_opacity_example.dart';

// ============ animation1=================
class LogoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LogoAppState();
  }
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
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
      })
      ..addStatusListener((status) {
        print('sattus = $status');
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          height: animation.value,
          width: animation.value,
          child: FlutterLogo(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

//================用AnimatedBuilder重构===============
class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: FlutterLogo(),
    );
  }
}

class GrowTransition extends StatelessWidget {
  final Widget child;
  final Animation<double> animation;

  GrowTransition({required this.child, required this.animation});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, Widget? child) {
          return Container(
            height: animation.value,
            width: animation.value,
            child: child,
          );
        },
        child: child,
      )),
    );
  }
}

class LogoApp2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LogoAppState2();
  }
}

class _LogoAppState2 extends State<LogoApp2> with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    final CurvedAnimation curve =
        CurvedAnimation(parent: controller, curve: Curves.easeIn);
    animation = Tween(begin: 0.0, end: 300.0).animate(curve);
    controller.forward();
  }

  Widget build(BuildContext context) {
    return GrowTransition(child: LogoWidget(), animation: animation);
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}

//============= 并行动画 ================
class AnimatedLogo extends AnimatedWidget {
  // The Tweens are static because they don't change.
  static final _opacityTween = Tween<double>(begin: 0.1, end: 1.0);
  static final _sizeTween = Tween<double>(begin: 0.0, end: 300.0);

  AnimatedLogo({required Animation<double> animation})
      : super(listenable: animation);

  Widget build(BuildContext context) {
    //TODO
    // final Animation<double> animation = listenable;
    return Material(
      child: Center(
          // child:  Opacity(
          //   opacity: _opacityTween.evaluate(animation),
          //   child:  Container(
          //     margin:  EdgeInsets.symmetric(vertical: 10.0),
          //     height: _sizeTween.evaluate(animation),
          //     width: _sizeTween.evaluate(animation),
          //     child:  FlutterLogo(),
          //   ),
          // ),
          ),
    );
  }
}

class LogoApp3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LogoAppState3();
  }
}

class _LogoAppState3 extends State<LogoApp3> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });

    controller.forward();
  }

  Widget build(BuildContext context) {
    return AnimatedLogo(animation: animation);
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}

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
            Container(
              child: Text("https://flutterchina.club/animations/"),
              padding: EdgeInsets.symmetric(vertical: 10),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return LogoApp();
                }));
              },
              child: Text("动画示例-Logo"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return LogoApp2();
                }));
              },
              child: Text('用AnimatedBuilder重构'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return LogoApp3();
                }));
              },
              child: Text('并行动画'),
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
