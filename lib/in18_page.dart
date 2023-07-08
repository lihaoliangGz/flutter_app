import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

///国际化
class In18Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales:  [
        Locale('en'),
        Locale('es'),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text('国际化'),
        ),
        body: new Container(
          decoration: new BoxDecoration(color: Colors.white),
          child: new Center(
            child: new Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Icon(Icons.star, color: Colors.green[500])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
