import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("shared_preferences"),
      ),
      body: Center(
        child: ElevatedButton (
          onPressed: _incrementCounter,
          child: Text("Increment Counter"),
        ),
      ),
    );
  }

  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times.');
    await prefs.setInt('counter', counter);
  }
}
