import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class DraggableScrollableSheetExample extends BaseStatelessApp {
  @override
  Widget getBody() {
    return SizedBox.expand(
      child: DraggableScrollableSheet(
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            color: Colors.blue[100],
            child: ListView.builder(
              controller: scrollController,
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(title: Text('Item $index'));
              },
            ),
          );
        },
      ),
    );
  }

  @override
  String getTitle() {
    return 'DraggableScrollableSheet';
  }
}
