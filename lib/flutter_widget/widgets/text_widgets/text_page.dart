import 'package:flutter/material.dart';
import 'package:flutterapp/base/BaseStatelessApp.dart';

class TextPage extends BaseStatelessApp {
  @override
  Widget getBody() {
    return Column(
      children: [
        Text(
          "abckabckjskldjgklasKklglsakjglkjsadljflkjklsajlkdjlkasjl",
          textAlign: TextAlign.left,
          textScaleFactor: 1.5,
          overflow: TextOverflow.ellipsis,
        ),
        Center(
          child: Text.rich(
            TextSpan(
              text: 'Hello', // default text style
              children: <TextSpan>[
                TextSpan(
                    text: ' beautiful ',
                    style: TextStyle(fontStyle: FontStyle.italic)),
                TextSpan(
                    text: 'world',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
        SizedBox(height: 30),
        SelectionArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Selectable text',
                selectionColor: Colors.amber,
              ),
              SizedBox(height: 10),
              SelectionContainer.disabled(child: Text('Non-selectable text')),
              SizedBox(height: 10),
              Text(
                'Selectable text',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.wavy
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  String getTitle() {
    return "Text";
  }
}
