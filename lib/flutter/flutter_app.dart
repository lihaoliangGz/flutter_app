import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/flutter/foundation/key/key_example.dart';

class FlutterApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("Key"),
          onTap: () {
            Navigator.of(context)
                .push(new MaterialPageRoute(builder: (context) {
              return KeyExample();
            }));
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return 'Flutter API';
  }
}
