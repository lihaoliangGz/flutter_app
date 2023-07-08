import 'package:flutter/material.dart';
import 'package:flutterapp/flutter_widget/widgets/widget_layout/column_page.dart';
import 'package:flutterapp/flutter_widget/widgets/widget_layout/custom_single_child_layout_example.dart';
import 'package:flutterapp/flutter_widget/widgets/widget_layout/expanded_page.dart';
import 'package:flutterapp/flutter_widget/widgets/widget_layout/fractionally_sized_box_example.dart';
import 'package:flutterapp/flutter_widget/widgets/widget_layout/gridview/grid_view_app.dart';
import 'package:flutterapp/flutter_widget/widgets/widget_layout/layout_builder_example.dart';
import 'package:flutterapp/flutter_widget/widgets/widget_layout/multi_list_view_page.dart';
import 'package:flutterapp/flutter_widget/widgets/widget_layout/row_page.dart';
import 'package:flutterapp/flutter_widget/widgets/widget_layout/table_example.dart';
import 'package:flutterapp/flutter_widget/widgets/widget_layout/wrap_example.dart';

import 'align_demo.dart';
import 'aspect_ratio_demo.dart';
import 'baseline_demo.dart';
import 'center_demo.dart';
import 'constrained_box_demo.dart';
import 'container_demo.dart';
import 'fitted_box_demo.dart';
import 'intrinsic_height_demo.dart';
import 'limited_box_demo.dart';
import 'listview_page.dart';
import 'offstage_page.dart';
import 'overflow_box_demo.dart';
import 'padding_demo.dart';
import 'sized_box_demo.dart';
import 'sized_overflow_box_demo.dart';
import 'stack_page.dart';
import 'transform_demo.dart';

class WidgetLayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("layout"),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: Text("拥有单个子元素的布局widget"),
              alignment: AlignmentDirectional.center,
              padding: EdgeInsets.symmetric(vertical: 13),
              decoration: BoxDecoration(color: Colors.grey[300]),
            ),
            ListTile(
              title: Text("Container"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ContainerDemo();
                }));
              },
            ),
            ListTile(
              title: Text("Padding"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return PaddingDemo();
                }));
              },
            ),
            ListTile(
              title: Text("Center"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return CenterDemo();
                }));
              },
            ),
            ListTile(
              title: Text("Align"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return AlignDemo();
                }));
              },
            ),
            ListTile(
              title: Text("FittedBox"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return FittedBoxDemo();
                }));
              },
            ),
            ListTile(
              title: Text("AspectRatio"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return AspectRatioDemo();
                }));
              },
            ),
            ListTile(
              title: Text("ConstrainedBox"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ConstrainedBoxDemo();
                }));
              },
            ),
            ListTile(
              title: Text("baseline"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return BaselineDemo();
                }));
              },
            ),
            ListTile(
              title: Text("IntrinsicHeight"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return IntrinsicHeightDemo();
                }));
              },
            ),
            ListTile(
              title: Text("LimitedBox"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return LimitedBoxDemo();
                }));
              },
            ),
            ListTile(
              title: Text("Offstage"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return OffStagePage();
                }));
              },
            ),
            ListTile(
              title: Text("OverflowBox"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return OverflowBoxDemo();
                }));
              },
            ),
            ListTile(
              title: Text("SizedBox"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SizedBoxDemo();
                }));
              },
            ),
            ListTile(
              title: Text("SizedOverflowBox"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return SizedOverflowBoxDemo();
                }));
              },
            ),
            ListTile(
              title: Text("Transform"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return TransformDemo();
                }));
              },
            ),
            ListTile(
              title: Text("Expanded"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return ExpandedPage();
                }));
              },
            ),
            ListTile(
              title: Text("CustomSingleChildLayout"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return CustomSingleChildLayoutExample();
                }));
              },
            ),
            ListTile(
              title: Text("FractionallySizedBox"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return FractionallySizedBoxExample();
                }));
              },
            ),

            //========================多个========================

            Container(
              child: Text("拥有多个子元素的布局widget"),
              alignment: AlignmentDirectional.center,
              padding: EdgeInsets.symmetric(vertical: 13),
              decoration: BoxDecoration(color: Colors.grey[300]),
            ),
            ListTile(
              title: Text("Stack"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return StackPage();
                }));
              },
            ),
            ListTile(
              title: Text("ListView"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ListViewPage()));
              },
            ),
            ListTile(
              title: Text("ListView多布局"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MultiListViewPage()));
              },
            ),
            ListTile(
              title: Text("GridView"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => GridViewApp()));
              },
            ),
            ListTile(
              title: Text("Row"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => RowPage()));
              },
            ),
            ListTile(
              title: Text("Column"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ColumnPage()));
              },
            ),
            ListTile(
              title: Text("LayoutBuilder"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LayoutBuilderExample()));
              },
            ),
            ListTile(
              title: Text("Wrap"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => WrapExample()));
              },
            ),
            ListTile(
              title: Text("Table"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TableExample()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
