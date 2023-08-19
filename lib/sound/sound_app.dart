import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/sound/flutter_sound_demo.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:toast/toast.dart';

class SoundApp extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Center(
      child: ElevatedButton(
        onPressed: () async{
          var permissionStatus = await Permission.microphone.request();
          if (permissionStatus.isGranted) {
            return;
          } else if (permissionStatus.isPermanentlyDenied) {
            Toast.show('打开设置页');
          }
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Demo()),
          );
        },
        child: Text('flutter_sound 插件demo'),
      ),
    );
  }

  @override
  String getTitle() {
    return '录音';
  }
}
