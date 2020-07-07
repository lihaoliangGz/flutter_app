import 'package:flutter/material.dart';
import 'package:flutterapp/widget_layout/ContainerDemo.dart';
import 'package:flutterapp/widget_menu/Column_demo.dart';
import 'package:flutterapp/widget_menu/row_demo.dart';

class WidgetsMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget 目录"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.grey[300],
            child: Center(
                child: Text(
              "基础 Widgets",
              style: TextStyle(fontSize: 18),
            )),
          ),
          ListTile(
            title: Text("Container"),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ContainerDemo()));
            },
          ),
          ListTile(
            title: Text("Row"),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => RowDemo()));
            },
          ),
          ListTile(
            title: Text("Column"),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ColumnDemo()));
            },
          ),
        ],
      ),
    );
  }
}
