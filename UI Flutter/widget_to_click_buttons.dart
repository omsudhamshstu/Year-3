import 'package:flutter/material.dart';

void main() => runApp(ClickCounter());

class ClickCounter extends StatefulWidget {
  @override
  _ClickCounterState createState() => _ClickCounterState();
}

class _ClickCounterState extends State<ClickCounter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Click Counter")),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Count: $count"),
            ElevatedButton(
                onPressed: () => setState(() => count++),
                child: Text("Click Me"))
          ]),
        ),
      ),
    );
  }
}

