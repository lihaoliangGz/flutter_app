import 'package:flutter/material.dart';
import 'package:flutterapp/widget_layout/AlignDemo.dart';
import 'package:flutterapp/widget_layout/AspectRatioDemo.dart';
import 'package:flutterapp/widget_layout/CenterDemo.dart';
import 'package:flutterapp/widget_layout/ContainerDemo.dart';
import 'package:flutterapp/widget_layout/FittedBoxDemo.dart';
import 'package:flutterapp/widget_layout/PaddingDemo.dart';
import 'package:flutterapp/widget_layout/StackDemo.dart';
import 'package:flutterapp/widget_layout/listview_demo.dart';

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
              ),
              new ListTile(
                title: new Text("Center"),
                onTap: () {
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (context) {
                    return new CenterDemo();
                  }));
                },
              ),
              new ListTile(
                title: new Text("Align"),
                onTap: () {
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (context) {
                    return new AlignDemo();
                  }));
                },
              ),
              new ListTile(
                title: new Text("FittedBox"),
                onTap: () {
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (context) {
                    return new FittedBoxDemo();
                  }));
                },
              ),
              new ListTile(
                title: new Text("AspectRatio"),
                onTap: () {
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (context) {
                    return new AspectRatioDemo();
                  }));
                },
              ),

              //===============================================================
              new Container(
                child: new Text("拥有多个子元素的布局widget"),
                alignment: AlignmentDirectional.center,
                padding: new EdgeInsets.symmetric(vertical: 13),
                decoration: new BoxDecoration(color: Colors.grey[300]),
              ),
              new ListTile(
                title: new Text("Stack"),
                onTap: () {
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (context) {
                    return new StackDemo();
                  }));
                },
              ),
              ListTile(
                title: Text("ListView"),
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) => ListViewDemo()));
                },
              ),
            ],
          )),
    );
  }
}
