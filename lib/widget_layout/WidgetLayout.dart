import 'package:flutter/material.dart';
import 'package:flutterapp/widget_layout/AlignDemo.dart';
import 'package:flutterapp/widget_layout/AspectRatioDemo.dart';
import 'package:flutterapp/widget_layout/CenterDemo.dart';
import 'package:flutterapp/widget_layout/ContainerDemo.dart';
import 'package:flutterapp/widget_layout/FittedBoxDemo.dart';
import 'package:flutterapp/widget_layout/PaddingDemo.dart';
import 'package:flutterapp/widget_layout/StackDemo.dart';
import 'package:flutterapp/widget_layout/baseline_demo.dart';
import 'package:flutterapp/widget_layout/constrained_box_demo.dart';
import 'package:flutterapp/widget_layout/intrinsic_height_demo.dart';
import 'package:flutterapp/widget_layout/limited_box_demo.dart';
import 'package:flutterapp/widget_layout/listview_demo.dart';
import 'package:flutterapp/widget_layout/offstage_demo.dart';
import 'package:flutterapp/widget_layout/overflow_box_demo.dart';
import 'package:flutterapp/widget_layout/sized_box_demo.dart';
import 'package:flutterapp/widget_layout/sized_overflow_box_demo.dart';
import 'package:flutterapp/widget_layout/transform_demo.dart';

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
              new ListTile(
                title: new Text("ConstrainedBox"),
                onTap: () {
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (context) {
                    return new ConstrainedBoxDemo();
                  }));
                },
              ),
              new ListTile(
                title: new Text("baseline"),
                onTap: () {
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (context) {
                    return new BaselineDemo();
                  }));
                },
              ),
              new ListTile(
                title: new Text("IntrinsicHeight"),
                onTap: () {
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (context) {
                    return new IntrinsicHeightDemo();
                  }));
                },
              ),
              new ListTile(
                title: new Text("LimitedBox"),
                onTap: () {
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (context) {
                    return new LimitedBoxDemo();
                  }));
                },
              ),
              new ListTile(
                title: new Text("Offstage"),
                onTap: () {
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (context) {
                    return new OffStageDemo();
                  }));
                },
              ),
              new ListTile(
                title: new Text("OverflowBox"),
                onTap: () {
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (context) {
                    return new OverflowBoxDemo();
                  }));
                },
              ),
              new ListTile(
                title: new Text("SizedBox"),
                onTap: () {
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (context) {
                    return new SizedBoxDemo();
                  }));
                },
              ),
              new ListTile(
                title: new Text("SizedOverflowBox"),
                onTap: () {
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (context) {
                    return new SizedOverflowBoxDemo();
                  }));
                },
              ),
              new ListTile(
                title: new Text("Transform"),
                onTap: () {
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (context) {
                    return new TransformDemo();
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
