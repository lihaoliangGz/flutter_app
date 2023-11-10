import 'package:flutter/material.dart';

class RepaintBoundaryExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RepaintBoundary(
          child: CircularProgressIndicator(),
        ),
        // child: CircularProgressIndicator(),
      ),
    );
  }
}
