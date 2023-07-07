import 'dart:developer';

import 'package:device_information/device_information.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class DeviceInformationExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              _getDeviceInfo();
            },
            child: Text('click')),
      ],
    );
  }

  void _getDeviceInfo() async {
    try {
      var apiLevel = await DeviceInformation.apiLevel;
      var cpuName = await DeviceInformation.cpuName;
      //var deviceIMEINumber = await DeviceInformation.deviceIMEINumber;
      var deviceManufacturer = await DeviceInformation.deviceManufacturer;
      var deviceModel = await DeviceInformation.deviceModel;
      var deviceName = await DeviceInformation.deviceName;
      var hardware = await DeviceInformation.hardware;
      var platformVersion = await DeviceInformation.platformVersion;
      var productName = await DeviceInformation.productName;
      log(
          'apiLevel: $apiLevel' +
              '\ncpuName: $cpuName' +
              //'deviceIMEINumber: $deviceIMEINumber' +
              '\ndeviceManufacturer: $deviceManufacturer' +
              '\ndeviceModel: $deviceModel' +
              '\ndeviceName: $deviceName' +
              '\nhardware: $hardware' +
              '\nplatformVersion: $platformVersion' +
              '\nproductName: $productName',
          name: 'DeviceInformation');
    } catch (e) {
      log('crash:\n$e', name: 'DeviceInformation');
    }
  }

  @override
  String getTitle() {
    return 'device_information';
  }
}
