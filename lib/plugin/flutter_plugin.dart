import 'package:flutter/material.dart';
import 'package:flutterapp/plugin/image_picker_demo.dart';
import 'package:flutterapp/plugin/shared_preference_demo.dart';
import 'package:flutterapp/plugin/sql_demo.dart';

class FlutterPluginDemo extends StatelessWidget {
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
        ],
      ),
    );
  }
}

class _ImagePickerPlugin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
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
    return RaisedButton(
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
    return RaisedButton(
      onPressed: () {
        Navigator.of(context)
            .push(new MaterialPageRoute(builder: (context) => SQLDemo()));
      },
      child: Text("SQLite"),
    );
  }
}
