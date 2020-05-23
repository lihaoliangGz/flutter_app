import 'package:flutter/material.dart';
import 'package:flutterapp/ContainerDemo.dart';
import 'package:flutterapp/PaddingDemo.dart';

class WidgetLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          appBar: AppBar(
            title: Text("布局 Widget"),
          ),
          body: new ListView(
            children: <Widget>[
              new Container(
                child: new Text("拥有单个子元素的布局widget"),
                alignment: AlignmentDirectional.center,
                padding: new EdgeInsets.symmetric(vertical: 13),
                decoration: new BoxDecoration(color: Colors.grey[300]),
              ),
              new ListTile(
                title: new Text("Container"),
                onTap: () {
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (context) {
                    return new ContainerDemo();
                  }));
                },
              ),
              new ListTile(
                title: new Text("Padding"),
                onTap: () {
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (context) {
                    return new PaddingDemo();
                  }));
                },
              )
            ],
          )),
    );
  }
}
