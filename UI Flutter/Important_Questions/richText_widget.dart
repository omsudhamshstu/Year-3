import 'package:flutter/material.dart';

void main() => runApp(RichTextExample());

class RichTextExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RichText(
            text: TextSpan(
              text: "Welcome ",
              style: TextStyle(color: Colors.black, fontSize: 20),
              children: [
                TextSpan(
                    text: "Om ",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
                TextSpan(text: "to Flutter!", style: TextStyle(color: Colors.red))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

