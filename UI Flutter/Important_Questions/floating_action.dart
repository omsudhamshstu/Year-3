import 'package:flutter/material.dart';

void main() => runApp(FABApp());

class FABApp extends StatefulWidget {
  @override
  State<FABApp> createState() => _FABAppState();
}

class _FABAppState extends State<FABApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Floating Action Button Example")),
        body: Center(child: Text("Count: $count")),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() => count++),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

