import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime time = DateTime.now();
    print("日 ${time.day}");
    print("月 ${time.month}");
    print("年 ${time.year} local=${time.toLocal().toString()}");

    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Container"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10),
              color: Colors.amber[600],
              width: 48,
              height: 48,
            ),
            Container(
              constraints: BoxConstraints.expand(
                height: Theme.of(context).textTheme.displayLarge?.fontSize ??
                    0 * 1.1 + 200.0,
              ),
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue[600],
              alignment: Alignment.center,
              child: Text('Hello World',
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(color: Colors.white)),
              transform: Matrix4.rotationZ(0.1),
            )
          ],
        ),
      ),
    );
  }
}
