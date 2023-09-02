import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/flutter/foundation/key/object_key_example.dart';

class KeyExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("ObjectKey"),
          onTap: () {
            Navigator.of(context)
                .push(new MaterialPageRoute(builder: (context) {
              return ObjectKeyExample();
            }));
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return 'Key';
  }
}
