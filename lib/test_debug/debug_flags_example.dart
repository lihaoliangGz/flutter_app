import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DebugFlagsExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DebugFlagsState();
  }
}

class _DebugFlagsState extends State<DebugFlagsExample> {
  bool _debugPaintSizeEnabled = false;
  bool _debugPaintBaselinesEnabled = false;
  bool _debugPaintPointersEnabled = false;
  bool _debugPaintLayerBordersEnabled = false;
  bool _debugRepaintRainbowEnabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('调试标志'),
        ),
        body: Column(
          children: [
            TextButton(
              onPressed: () {
                _debugPaintSizeEnabled = !_debugPaintSizeEnabled;
                debugPaintSizeEnabled = _debugPaintSizeEnabled;
                setState(() {
                  //do nothing
                });
              },
              child: Text("debugPaintSizeEnabled"),
            ),
            TextButton(
              onPressed: () {
                _debugPaintBaselinesEnabled = !_debugPaintBaselinesEnabled;
                debugPaintBaselinesEnabled = _debugPaintBaselinesEnabled;
                setState(() {
                  //do nothing
                });
              },
              child: Text("debugPaintBaselinesEnabled"),
            ),
            TextButton(
              onPressed: () {
                _debugPaintPointersEnabled = !_debugPaintPointersEnabled;
                debugPaintPointersEnabled = _debugPaintPointersEnabled;
                setState(() {
                  //do nothing
                });
              },
              child: Text("debugPaintPointersEnabled"),
            ),
            TextButton(
              onPressed: () {
                _debugPaintLayerBordersEnabled = !_debugPaintLayerBordersEnabled;
                debugPaintLayerBordersEnabled = _debugPaintLayerBordersEnabled;
                setState(() {
                  //do nothing
                });
              },
              child: Text("debugPaintLayerBordersEnabled"),
            ),
            TextButton(
              onPressed: () {
                _debugRepaintRainbowEnabled = !_debugRepaintRainbowEnabled;
                debugRepaintRainbowEnabled = _debugRepaintRainbowEnabled;
                setState(() {
                  //do nothing
                });
              },
              child: Text("debugRepaintRainbowEnabled"),
            ),
            TextButton(
              onPressed: () {
                assert(() {
                  // ...debug-only code here...
                  print('仅在调试模式下才会执行');
                  return true;
                }());
              },
              child: Text("使用assert在调试模式下执行代码"),
            ),
          ],
        ),
      ),
    );
  }
}
