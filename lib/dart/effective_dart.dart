import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'effective_usage.dart';

class EffectiveDart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Effective Dart"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("使用"),
            onTap: () {
              Navigator.of(context)
                  .push(new MaterialPageRoute(builder: (context) {
                return EffectiveUsageDemo();
              }));
            },
          ),
        ],
      ),
    );
  }
}
