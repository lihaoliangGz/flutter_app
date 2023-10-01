import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/network/background_parse_json_example.dart';
import 'package:flutterapp/network/dio_example.dart';
import 'package:flutterapp/network/network_example.dart';
import 'package:flutterapp/network/network_http_example.dart';
import 'package:flutterapp/network/web_socket_example.dart';

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
              MaterialPageRoute(builder: (context) => NetworkExample()),
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
        ListTile(
          title: Text("WebSockets 通信"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WebSocketExample()),
            );
          },
        ),
        ListTile(
          title: Text("在后台处理 JSON 数据解析"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BackgroundParseJsonExample()),
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
