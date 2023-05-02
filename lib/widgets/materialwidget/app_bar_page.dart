import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("标题"),
        ),
      ),
    );
  }
}
