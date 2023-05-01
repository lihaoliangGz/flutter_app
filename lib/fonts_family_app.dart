import 'package:flutter/material.dart';

const String words1 = "Almost before we knew it, we had left the ground.";
const String words2 = "A shining crescent far beneath the flying vessel.";
const String words3 = "A red flair silhouetted the jagged edge of a wing.";
const String words4 = "Mist enveloped the ship three hours out from port.";

class FontsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var rockSalt = new Container(
      child: new Column(
        children: <Widget>[
          new Text("Rock Salt"),
          new Text(
            words2,
            textAlign: TextAlign.center,
            style: new TextStyle(fontFamily: 'Rock Salt', fontSize: 18),
          )
        ],
      ),
      margin: new EdgeInsets.all(10),
      padding: new EdgeInsets.all(10),
      decoration: new BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: new BorderRadius.all(new Radius.circular(5))),
    );

    var vt323 = new Container(
      child: new Column(
        children: <Widget>[
          new Text("VT323"),
          new Text(
            words3,
            textAlign: TextAlign.center,
            style: new TextStyle(fontFamily: "VT323", fontSize: 18),
          )
        ],
      ),
      margin: new EdgeInsets.all(10),
      padding:new EdgeInsets.all(10)

    );

    return new ListView(
      children: <Widget>[
        rockSalt,
        vt323,
      ],
    );
  }
}

class FontsFamilyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '字体',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("字体"),
        ),
        body: new FontsPage(),
      ),
    );
  }
}
