import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class CupertinoPickerExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return CupertinoButton(
      color: Colors.blue,
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              height: 200,
              child: CupertinoPicker(
                  itemExtent: 50,
                  backgroundColor: Colors.cyanAccent,
                  useMagnifier: true,
                  magnification: 1.2,
                  onSelectedItemChanged: (value) {
                    print('value:$value');
                  },
                  children: [
                    Center(child: Text('data1')),
                    Center(child: Text('data2')),
                    Center(child: Text('data3')),
                  ]),
            );
          },
        );
      },
      child: Text('show'),
    );
  }

  @override
  String getTitle() {
    return "CupertinoPicker";
  }
}
