import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:flutterapp/persistence/read_and_write_files.dart';

class PersistencePage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListTile(
          title: Text("读写文件"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReadAndWriteFilesExample(
                  storage: CounterStorage(),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return '持久化';
  }
}
