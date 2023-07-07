import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:package_info_plus/package_info_plus.dart';

class PackageInfoPlusExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return ElevatedButton(
        onPressed: () {
          _get();
        },
        child: Text('click'));
  }

  void _get() async {
    var info = await PackageInfo.fromPlatform();
    String appName = info.appName;
    String packageName = info.packageName;
    String version = info.version;
    String buildNumber = info.buildNumber;
    String buildSignature = info.buildSignature;
    String? installerStore = info.installerStore;

    log(
        'appName: $appName' +
            '\npackageName: $packageName' +
            '\nversion: $version' +
            '\nbuildNumber: $buildNumber' +
            '\nbuildSignature: $buildSignature' +
            '\ninstallerStore: $installerStore',
        name: 'PackageInfo');
  }

  @override
  String getTitle() {
    return 'package_info_plus';
  }
}
