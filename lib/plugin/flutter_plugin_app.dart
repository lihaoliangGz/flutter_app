import 'package:flutter/material.dart';
import 'package:flutterapp/model/list_item_model.dart';
import 'package:flutterapp/plugin/flutter_spinkit_example.dart';
import 'package:flutterapp/plugin/flutter_svg_example.dart';
import 'package:flutterapp/plugin/image_picker_demo.dart';
import 'package:flutterapp/plugin/minor/minor_plugin_app.dart';
import 'package:flutterapp/plugin/package_info_plus_example.dart';
import 'package:flutterapp/plugin/path_example.dart';
import 'package:flutterapp/plugin/permission_handler_example.dart';
import 'package:flutterapp/plugin/rxdart_example.dart';
import 'package:flutterapp/plugin/shared_preference_demo.dart';
import 'package:flutterapp/plugin/sql_demo.dart';

class FlutterPluginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ListItemModel> dataList = [
      ListItemModel(
        "image_picker",
        ImagePickerDemo(),
      ),
      ListItemModel(
        "shared_preferences",
        SharedPreferenceDemo(),
      ),
      ListItemModel(
        "SQLite",
        SQLDemo(),
      ),
      ListItemModel(
        "path",
        PathExample(),
      ),
      ListItemModel(
        "flutter_svg",
        FlutterSvgExample(),
      ),
      ListItemModel(
        "permission_handler",
        PermissionHandlerExample(),
      ),
      ListItemModel(
        "package_info_plus",
        PackageInfoPlusExample(),
      ),
      ListItemModel(
        "rxdart",
        RxDartExample(),
      ),
      ListItemModel(
        "flutter_spinkit",
        FlutterSpinkitExample(),
      ),
      ListItemModel(
        "非主流插件",
        MinorPluginApp(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("flutter 插件"),
      ),
      body: ListView(
        children: List.generate(dataList.length, (index) {
          return ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                new MaterialPageRoute(
                  builder: (context) => dataList[index].widget,
                ),
              );
            },
            child: Text(dataList[index].title),
          );
        }),
      ),
    );
  }
}
