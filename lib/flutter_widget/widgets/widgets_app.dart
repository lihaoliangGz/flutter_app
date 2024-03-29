import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/flutter_widget/material/page_view_example.dart';
import 'package:flutterapp/flutter_widget/material/page_view_example2.dart';
import 'package:flutterapp/flutter_widget/widgets/clip/clip_app.dart';
import 'package:flutterapp/flutter_widget/widgets/custom_scroll_view/custom_scroll_view_app.dart';
import 'package:flutterapp/flutter_widget/widgets/functions/widgets_functions_app.dart';
import 'package:flutterapp/flutter_widget/widgets/other_app.dart';
import 'package:flutterapp/flutter_widget/widgets/repaint_boundary_example.dart';
import 'package:flutterapp/flutter_widget/widgets/reuse_widget_example.dart';
import 'package:flutterapp/flutter_widget/widgets/text_widgets/text_widgets_app.dart';
import 'package:flutterapp/flutter_widget/widgets/touch_interactions/touch_interaction_app.dart';
import 'package:flutterapp/flutter_widget/widgets/widget_layout/backdrop_filter_example.dart';
import 'package:flutterapp/flutter_widget/widgets/widget_layout/widget_layout_app.dart';

class WidgetsApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: [
        ListTile(
          title: Text("layout"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WidgetLayoutApp()),
            );
          },
        ),
        ListTile(
          title: Text("clip"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ClipApp()),
            );
          },
        ),
        ListTile(
          title: Text("Text"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TextWidgetsApp()),
            );
          },
        ),
        ListTile(
          title: Text("other"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OtherApp()),
            );
          },
        ),
        ListTile(
          title: Text("widgets functions"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WidgetsFunctionsApp()),
            );
          },
        ),
        ListTile(
          title: Text("Touch Interaction"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TouchInteractionApp()),
            );
          },
        ),
        ListTile(
          title: Text("BackdropFilter"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BackdropFilterExample()),
            );
          },
        ),
        ListTile(
          title: Text("测试widget重建"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ReuseWidgetExample()),
            );
          },
        ),
        ListTile(
          title: Text("PageView"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PageViewExample()),
            );
          },
        ),
        ListTile(
          title: Text("PageView - PageView.custom"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PageViewExample2()),
            );
          },
        ),
        ListTile(
          title: Text("CustomScrollView"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CustomScrollViewApp()),
            );
          },
        ),
        ListTile(
          title: Text("RepaintBoundary"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RepaintBoundaryExample()),
            );
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "Widgets";
  }
}
