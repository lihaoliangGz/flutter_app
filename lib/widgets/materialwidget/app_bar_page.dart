import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.access_alarm)),
            IconButton(onPressed: () {}, icon: Icon(Icons.switch_account)),
          ],
          backgroundColor: Colors.cyanAccent,
          centerTitle: true,
          elevation: 10,
          //excludeHeaderSemantics: true,
          foregroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new),
          ),
          leadingWidth: 60,
          //primary: false,
          shadowColor: Colors.amberAccent,
          titleSpacing: 50,
          title: Text("标题"),
          toolbarHeight: 100,
        ),
      ),
    );
  }
}
