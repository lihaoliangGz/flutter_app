import 'package:flutter/material.dart';

class MaterialAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var queryData = MediaQuery.of(context);
    print("${queryData.size}");
    return MaterialApp(
      home: Scaffold(
        body: Text("MaterialAppPage"),
      ),
    );
  }
}
