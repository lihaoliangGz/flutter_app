import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class WrapExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Wrap(
      spacing: 2.0,
      runSpacing: 20,
      //direction: Axis.vertical,
      verticalDirection: VerticalDirection.up,
      children: [
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900, child: const Text('AH')),
          label: const Text('Hamilton'),
        ),
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900, child: const Text('ML')),
          label: const Text('Lafayette'),
        ),
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900, child: const Text('HM')),
          label: const Text('Mulligan as'),
        ),
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900, child: const Text('JL')),
          label: const Text('Laurens'),
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return 'Wrap';
  }
}
