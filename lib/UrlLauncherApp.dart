import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Page extends StatelessWidget {
  _launchURL() {
    launch("http://www.baidu.com");
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new RaisedButton(
        onPressed: _launchURL,
        child: new Text("打开默认浏览器"),
      ),
    );
  }
}

class UrlLauncherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '启动浏览器',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('启动浏览器'),
        ),
        body: new Page(),
      ),
    );
  }
}
