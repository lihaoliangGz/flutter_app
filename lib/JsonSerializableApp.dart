import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterapp/user.dart';

const String title = "JSON和序列化";

class MyPage extends StatelessWidget {
  _decode() {
    String encoded = json.encode([
      1,
      2,
      {"a": 6}
    ]);
    var decoded = json.decode('["foo", {"bar": 12}]');
    print("encoded = $encoded");
    print("decoded = $decoded , bar= ${decoded[1]['bar']}");


    String strJson = '{"name": "John Smith","email": "john@example.com"}';
    Map userMap = json.decode(strJson);
    var user = new User.fromJson(userMap);
    print("user.name = ${user.name} , user.email = ${user.email}");
    String strEncode = json.encode(user);
    print("strEncode = $strEncode");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new ElevatedButton(
          onPressed: _decode,
          child: new Text('json'),
        ),
      ),
    );
  }
}

class JsonSerializableApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyPage(),
    );
  }
}
