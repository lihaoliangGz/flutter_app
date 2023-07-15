import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class IconButtonExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return SizedBox.expand(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              log('IconButton1');
            },
            icon: Icon(Icons.volume_up),
          ),

          // Adding a filled background
          Ink(
            decoration: const ShapeDecoration(
              color: Colors.lightBlue,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: const Icon(Icons.android),
              color: Colors.white,
              onPressed: () {},
            ),
          ),

          IconButton(
            icon: const Icon(Icons.filter_drama),
            padding: EdgeInsetsDirectional.zero,
            iconSize: 12,
            //alignment: Alignment.centerLeft,
            // constraints: BoxConstraints(
            //   minHeight: 24,
            //   minWidth: 24,
            // ),
            onPressed: () {},
          ),
          // Filled icon button
          IconButton.filled(
            icon: const Icon(Icons.filter_drama),
            onPressed: () {},
          ),

          // Filled tonal icon button
          IconButton.filledTonal(
            onPressed: () {},
            icon: const Icon(Icons.filter_drama),
          ),

          // Outlined icon button
          IconButton.outlined(
            onPressed: () {},
            icon: const Icon(Icons.filter_drama),
          ),

          //  设置实际大小
          SizedBox(
            width: 36,
            height: 36,
            child: IconButton(
              icon: const Icon(Icons.filter_drama),
              padding: EdgeInsetsDirectional.zero,
               iconSize: 36,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }

  @override
  String getTitle() {
    return 'IconButton';
  }
}
