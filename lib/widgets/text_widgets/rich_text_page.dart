import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RichTextPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            text: 'Hello ',
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                text: 'bold',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: ' world!',
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Fluttertoast.showToast(msg: "点击TextSpan");
                    print("点击了TextSpan");
                  },
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  String getTitle() {
    return "RichText";
  }
}
