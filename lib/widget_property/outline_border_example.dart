import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class OutlineBorderExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Center(
      child: Column(
        children: [
          _buildWidget(CircleBorder()),
          _buildWidget(
            LinearBorder(
              side: BorderSide(color: Colors.greenAccent, width: 6),
              start: LinearBorderEdge(size: 1),
              bottom: LinearBorderEdge(
                size: 0.5,
                alignment: 1,
              ),
            ),
          ),
          _buildWidget(
            RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(5),
                side: BorderSide()),
          ),
        ],
      ),
    );
  }

  Widget _buildWidget(OutlinedBorder? border) {
    return ElevatedButton(
      onPressed: () {},
      child: Text('button-abc'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: border,
      ),
    );
  }

  @override
  String getTitle() {
    return 'OutlineBorder';
  }
}
