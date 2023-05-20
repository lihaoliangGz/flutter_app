import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const String title = "使用平台通道编写平台特定的代码";

class PlatformChannelApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new PlatformChannelState();
  }
}

class PlatformChannelState extends State<PlatformChannelApp> {
  static const platform = const MethodChannel('samples.flutter.io/battery');

  String _batteryLevel = 'Unknown battery level';

  _getBatteryLevel() async {
    String batteryLevel;
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result%';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'。";
    } catch (e) {
      batteryLevel = "e= $e";
    }

    setState(() {
      _batteryLevel = batteryLevel;
    });
  }

  @override
  Widget build(BuildContext context) {
    //final String title = "使用平台通道编写平台特定的代码";

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new ElevatedButton (
              onPressed: _getBatteryLevel,
              child: new Text('Get Battery Level'),
            ),
            new Text(_batteryLevel)
          ],
        ),
      ),
    );
  }
}
