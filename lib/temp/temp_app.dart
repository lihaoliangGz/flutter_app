import 'package:flutter/material.dart';
import 'package:flutterapp/temp/refresh_demo.dart';

class TempApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Temp"),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text("刷新"),
              onTap: () {
                Navigator.of(context)
                    .push(new MaterialPageRoute(builder: (context) {
                  return RefreshDemo();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
