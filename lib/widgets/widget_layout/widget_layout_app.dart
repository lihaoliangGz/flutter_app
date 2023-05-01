import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/widget_layout/column_page.dart';
import 'package:flutterapp/widgets/widget_layout/expanded_page.dart';
import 'package:flutterapp/widgets/widget_layout/row_page.dart';

import 'align_demo.dart';
import 'aspect_ratio_demo.dart';
import 'baseline_demo.dart';
import 'center_demo.dart';
import 'constrained_box_demo.dart';
import 'container_demo.dart';
import 'fitted_box_demo.dart';
import 'intrinsic_height_demo.dart';
import 'limited_box_demo.dart';
import 'listview_demo.dart';
import 'offstage_demo.dart';
import 'overflow_box_demo.dart';
import 'padding_demo.dart';
import 'sized_box_demo.dart';
import 'sized_overflow_box_demo.dart';
import 'stack_page.dart';
import 'transform_demo.dart';

class WidgetLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: Text("layout"),
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
            new ListTile(
              title: new Text("Expanded"),
              onTap: () {
                Navigator.of(context)
                    .push(new MaterialPageRoute(builder: (context) {
                  return ExpandedPage();
                }));
              },
            ),
            //========================多个========================
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
                  return new StackPage();
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
            ListTile(
              title: Text("Row"),
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => RowPage()));
              },
            ),
            ListTile(
              title: Text("Column"),
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => ColumnPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
