import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:get/get.dart';

class BotToastExample extends StatefulWidget {
  const BotToastExample({super.key});

  @override
  State<BotToastExample> createState() => _BotToastExampleState();
}

class _BotToastExampleState extends State<BotToastExample> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp();
  }
}


// class BotToastExample extends BaseStatelessApp {
//   @override
//   Widget getBody() {
//     return ListView(
//       children: [
//         TextButton(
//             onPressed: () {
//               ToastContext().init(context);
//               Toast.show(
//                 'content',
//                 duration: Toast.lengthLong,
//                 gravity: Toast.center,
//               );
//             },
//             child: Text('toast')),
//       ],
//     );
//   }
//
//   @override
//   String getTitle() {
//     return "bot_toast";
//   }
// }
