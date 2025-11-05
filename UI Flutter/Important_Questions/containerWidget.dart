import 'package:flutter/material.dart';

void main() => runApp(ContainerApp());

class ContainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 100,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text("Container Box",
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ),
        ),
      ),
    );
  }
}

