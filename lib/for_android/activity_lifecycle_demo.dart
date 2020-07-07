import 'package:flutter/material.dart';

class ActivityLifecycle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ActivityLifecycleState();
  }
}

class _ActivityLifecycleState extends State<ActivityLifecycle>
    with WidgetsBindingObserver {
  AppLifecycleState _lastLifecycleState;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      _lastLifecycleState = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Center(
        child: GestureDetector(
          
        ),
      ),
    );
  }

  Widget _getWidget() {
    if (_lastLifecycleState == null)
      return new Text('This widget has not observed any lifecycle changes.',
          textDirection: TextDirection.ltr);
    return new Text(
        'The most recent lifecycle state this widget observed was: $_lastLifecycleState.',
        textDirection: TextDirection.ltr);
  }
}
