import 'package:flutter/material.dart';

void main() => runApp(MenuApp());

class MenuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Popup Menu Example")),
        body: Center(
          child: PopupMenuButton<String>(
            onSelected: (value) => print("Selected: $value"),
            itemBuilder: (context) => [
              PopupMenuItem(value: "Home", child: Text("Home")),
              PopupMenuItem(value: "Settings", child: Text("Settings")),
              PopupMenuItem(value: "Logout", child: Text("Logout")),
            ],
          ),
        ),
      ),
    );
  }
}

