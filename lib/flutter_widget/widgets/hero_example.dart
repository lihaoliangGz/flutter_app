import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class HeroExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 20.0),
        ListTile(
          leading: Hero(
            tag: 'hero-rectangle',
            child: Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
          ),
          onTap: () => _gotoDetailsPage(context),
          title: const Text(
            'Tap on the icon to view hero animation transition.',
          ),
        ),
      ],
    );
  }

  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Second Page'),
        ),
        body: Center(
          child: Hero(
            tag: 'hero-rectangle',
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    ));
  }

  @override
  String getTitle() {
    return "Hero";
  }
}
