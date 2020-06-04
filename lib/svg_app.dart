import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("SVG"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                child: SvgPicture.asset(
                "images/icon_svg.svg",
                color: Color(0xff08BF64),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
