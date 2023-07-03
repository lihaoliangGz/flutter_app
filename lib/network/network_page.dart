import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/network/dio_example.dart';
import 'package:flutterapp/network/network_app.dart';
import 'package:flutterapp/network/network_http_app.dart';

class NetworkPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Column(
      children: [
        ListTile(
          title: Text("网络"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NetworkApp()),
            );
          },
        ),
        ListTile(
          title: Text("网络和Http"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NetworkHttpApp()),
            );
          },
        ),
        ListTile(
          title: Text("Dio http 请求库"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DioExample()),
            );
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return '网络';
  }
}
