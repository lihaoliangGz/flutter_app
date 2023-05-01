import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Stack"),
          ),
          backgroundColor: Colors.blue,
          body: ListView(
            children: <Widget>[
              Container(
                  height: 300,
                  child: Center(
                    child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      //fit: StackFit.expand,
                      textDirection: TextDirection.ltr,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.red,
                        ),
                        Container(
                          width: 90,
                          height: 90,
                          color: Colors.green,
                        )
                      ],
                    ),
                  )),
              SizedBox(
                width: 300,
                height: 300,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: 300,
                      height: 300,
                      color: Colors.white,
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: <Color>[
                            Colors.black.withAlpha(0),
                            Colors.black12,
                            Colors.black45
                          ])),
                      child: Text(
                        "Foreground Text",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white70,
                width: 200,
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                      child: Text("Positioned1"),
                      top: 50,
                      left: 20,
                    ),
                    Positioned(
                      child: Text("Positioned2"),
                      top: 120,
                      left: 40,
                    ),
                    Positioned(
                      child: Container(
                        color: Colors.cyanAccent,
                        child: Text("Positioned3,in Container"),
                      ),
                      width: 100,
                      height: 50,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          )),
    );
  }
}
