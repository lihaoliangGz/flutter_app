import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class SQLDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SQLDemoSate();
  }
}

class _SQLDemoSate extends State<SQLDemo> {
  @override
  Widget build(BuildContext context) {
    //var db =await openDatabase("'my_db.db'");
    return Scaffold(
      appBar: AppBar(
        title: Text("SQL"),
      ),
      body: Center(
        child: Text("data"),
      ),
    );
  }
}
