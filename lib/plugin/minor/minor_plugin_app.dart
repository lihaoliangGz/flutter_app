import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/plugin/minor/device_information_example.dart';

class MinorPluginApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        _DeviceInformation(),
      ],
    );
  }

  @override
  String getTitle() {
    return '非主流插件';
  }
}

class _DeviceInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(new MaterialPageRoute(
            builder: (context) => DeviceInformationExample()));
      },
      child: Text("device_information"),
    );
  }
}
