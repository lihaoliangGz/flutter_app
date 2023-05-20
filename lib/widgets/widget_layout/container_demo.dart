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
              alignment: Alignment.bottomRight,
              child: Text('Hello World',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white)),
              //color: Colors.blue[600],
              constraints: BoxConstraints.expand(
                height: Theme.of(context).textTheme.displayLarge?.fontSize ??
                    0 * 1.1 + 200.0,
              ),
              decoration: new BoxDecoration(
                  color: Colors.greenAccent[700],
                  border: new Border.all(
                    color: Color(0xFF00796B),
                    width: 3.0,
                  )),
              margin: const EdgeInsets.all(25),
              padding: const EdgeInsets.all(8.0),
              transform: Matrix4.rotationZ(0.1),
            )
          ],
        ),
      ),
    );
  }
}
