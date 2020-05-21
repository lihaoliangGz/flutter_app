import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

///在Flutter中发起HTTP网络请求
const String title = "网络和Http";

class Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new PageState();
  }
}

class PageState extends State<Page> {
  var _ipAddress = "Unknown";

  _getIPAddress() async {
    var url = 'https://httpbin.org/ip';
    var httpClient = new HttpClient();

    String result;
    try {
      var request = await httpClient.getUrl(Uri.parse(url));
      var response = await request.close();
      if (response.statusCode == HttpStatus.ok) {
        var json = await response.transform(utf8.decoder).join();
        var data = jsonDecode(json);
        result = data['origin'];
      } else {
        result =
            'Error getting IP address:\nHttp status ${response.statusCode}';
      }
    } catch (exception) {
      result = 'Failed getting IP address';
    }

    // If the widget was removed from the tree while the message was in flight,
    // we want to discard the reply rather than calling setState to update our
    // non-existent appearance.
    if (!mounted) return;

    setState(() {
      _ipAddress = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("your current ip address is:"),
          Text("$_ipAddress"),
          new SizedBox(
            height: 32,
          ),
          new RaisedButton(
            onPressed: _getIPAddress,
            child: new Text('Get Ip Address'),
          )
        ],
      ),
    );
  }
}

class NetworkHttpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Page(),
      ),
    );
  }
}
