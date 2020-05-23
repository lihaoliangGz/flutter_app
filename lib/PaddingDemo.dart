import 'package:flutter/material.dart';

class PaddingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Padding"),
        ),
        body: Card(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
