import 'package:flutter/material.dart';

void main() => runApp(ImageApp());

class ImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Image Example")),
        body: Center(
          child: Image.asset('assets/flutter_logo.png'), // Add in pubspec.yaml
        ),
      ),
    );
  }
}

Note:
Add your image under assets/ folder and include it in pubspec.yaml:
flutter:
  assets:
    - assets/flutter_logo.png

