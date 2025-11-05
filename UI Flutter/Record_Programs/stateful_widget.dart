import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String msg = "Hello!";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(msg),
            ElevatedButton(
                onPressed: () => setState(() => msg = "You pressed me!"),
                child: Text("Click Me"))
          ]),
        ),
      ),
    );
  }
}

