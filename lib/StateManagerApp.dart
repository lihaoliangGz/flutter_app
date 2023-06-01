import 'package:flutter/material.dart';

///状态管理

//-------------------widget管理自己的状态----------------------------
class TapboxA extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _TapboxAState();
  }
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            _active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: new BoxDecoration(
            color: _active ? Colors.lightGreen[700] : Colors.grey[600]),
      ),
    );
  }
}

//-------------------父 widget 管理 widget 的 state----------------------------
class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}


class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TapboxB(
        active: _active,
        onChanged: _handleTapboxChanged,
      ),
    );
  }
}

//------------------------- TapboxB ----------------------------------

class TapboxB extends StatelessWidget {
  const TapboxB({
    super.key,
    this.active = false,
    required this.onChanged,
  });

  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
        child: Center(
          child: Text(
            active ? 'Active' : 'Inactive',
            style: const TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

//---------------------------- 混搭管理 ----------------------------
class ParentWidget2 extends StatefulWidget {
  const ParentWidget2({super.key});

  @override
  State<ParentWidget2> createState() => _ParentWidgetState2();
}

class _ParentWidgetState2 extends State<ParentWidget2> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TapboxC(
        active: _active,
        onChanged: _handleTapboxChanged,
      ),
    );
  }
}

//----------------------------- TapboxC ------------------------------
//在 TapboxC 示例中，点击时，盒子的周围会出现一个深绿色的边框。
// 点击时，边框消失，盒子的颜色改变。
// TapboxC 将其 _active 状态导出到其父 widget 中，但在内部管理其 _highlight 状态。
// 这个例子有两个状态对象 _ParentWidgetState 和 _TapboxCState。
class TapboxC extends StatefulWidget {
  const TapboxC({
    super.key,
    this.active = false,
    required this.onChanged,
  });

  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  State<TapboxC> createState() => _TapboxCState();
}

class _TapboxCState extends State<TapboxC> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    // This example adds a green border on tap down.
    // On tap up, the square changes to the opposite state.
    return GestureDetector(
      onTapDown: _handleTapDown, // Handle the tap events in the order that
      onTapUp: _handleTapUp, // they occur: down, up, tap, cancel
      onTap: _handleTap,
      onTapCancel: _handleTapCancel,
      child: Container(
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
          border: _highlight
              ? Border.all(
            color: Colors.teal[700]!,
            width: 10.0,
          )
              : null,
        ),
        child: Center(
          child: Text(widget.active ? 'Active' : 'Inactive',
              style: const TextStyle(fontSize: 32.0, color: Colors.white)),
        ),
      ),
    );
  }
}

class Point {
  late num x, y;

  Point(this.x, this.y);

  //Point(this.x, this.y) {}

  Point.origin() {
    this.x = 0;
    this.y = 0;
  }
}

class StateManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var p = new Point(1, 1);
    var p1 = Point.origin();
    print("p=${p.x}, p1=${p1.x}");

    return new MaterialApp(
      title: "状态管理",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("状态管理"),
        ),
        body: new Center(
          child: Column(
            children: [
              TapboxA(),
              SizedBox(height: 20),
              ParentWidget(),
              SizedBox(height: 20),
              ParentWidget2(),
            ],
          ),
        ),
      ),
    );
  }
}
