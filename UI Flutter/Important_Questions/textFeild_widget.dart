import 'package:flutter/material.dart';

void main() => runApp(TextFieldApp());

class TextFieldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("TextField Example")),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(labelText: "Enter your name"),
            ),
            ElevatedButton(
                onPressed: () => print("Name: ${controller.text}"),
                child: Text("Submit"))
          ]),
        ),
      ),
    );
  }
}

