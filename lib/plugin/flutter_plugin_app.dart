import 'package:flutter/material.dart';
import 'package:flutterapp/plugin/flutter_svg_example.dart';
import 'package:flutterapp/plugin/image_picker_demo.dart';
import 'package:flutterapp/plugin/path_example.dart';
import 'package:flutterapp/plugin/permission_handler_example.dart';
import 'package:flutterapp/plugin/shared_preference_demo.dart';
import 'package:flutterapp/plugin/sql_demo.dart';

class FlutterPluginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter 插件"),
      ),
      body: ListView(
        children: <Widget>[
          _ImagePickerPlugin(),
          _SharedPreference(),
          _SQL(),
          _Path(),
          _FlutterSvg(),
          _PermissionHandler(),
        ],
      ),
    );
  }
}

class _ImagePickerPlugin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
            new MaterialPageRoute(builder: (context) => ImagePickerDemo()));
      },
      child: Text("image_picker"),
    );
  }
}

class _SharedPreference extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(new MaterialPageRoute(
            builder: (context) => SharedPreferenceDemo()));
      },
      child: Text("shared_preferences"),
    );
  }
}

class _SQL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context)
            .push(new MaterialPageRoute(builder: (context) => SQLDemo()));
      },
      child: Text("SQLite"),
    );
  }
}

class _Path extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context)
            .push(new MaterialPageRoute(builder: (context) => PathExample()));
      },
      child: Text("path"),
    );
  }
}

class _FlutterSvg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
            new MaterialPageRoute(builder: (context) => FlutterSvgExample()));
      },
      child: Text("flutter_svg"),
    );
  }
}

class _PermissionHandler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(new MaterialPageRoute(
            builder: (context) => PermissionHandlerExample()));
      },
      child: Text("permission_handler"),
    );
  }
}
