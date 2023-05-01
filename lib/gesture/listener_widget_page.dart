import 'package:flutter/material.dart';

class ListenerWidgetPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<ListenerWidgetPage> {
  PointerEvent? _event;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Listener widget"),
        ),
        body: Listener(
          child: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            width: 300.0,
            height: 150.0,
            child: Text(
              '${_event?.localPosition ?? ''}',
              style: TextStyle(color: Colors.white),
            ),
          ),
          onPointerDown: (PointerDownEvent event) =>
              setState(() => _event = event),
          onPointerMove: (PointerMoveEvent event) =>
              setState(() => _event = event),
          onPointerUp: (PointerUpEvent event) => setState(() => _event = event),
        ),
      ),
    );
  }
}
