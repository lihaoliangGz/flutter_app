import 'package:flutter/material.dart';

class OffStagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OffstageDemoState();
  }
}

class _OffstageDemoState extends State<OffStagePage> {
  late bool _offstage;

  @override
  void initState() {
    super.initState();
    _offstage = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Offstage"),
      ),
      body: Column(
        children: <Widget>[
          new ElevatedButton(
            child: Center(child: Text("点击切换显示")),
            onPressed: () {
              setState(() {
                _offstage = !_offstage;
              });
            },
          ),
          SizedBox(
            height: 20,
          ),
          new Offstage(
            offstage: _offstage,
            child: Container(color: Colors.green, height: 100.0),
          ),
        ],
      ),
    );
  }
}
