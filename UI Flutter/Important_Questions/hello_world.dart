import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// Stateless Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHome());
  }
}

// Stateful Widget
class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  String msg = "Hello World!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello App")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(msg, style: TextStyle(fontSize: 22)),
          ElevatedButton(
            onPressed: () => setState(() => msg = "State Changed!"),
            child: Text("Press Me"),
          ),
        ]),
      ),
    );
  }
}
