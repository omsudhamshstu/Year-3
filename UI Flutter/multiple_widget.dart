import 'package:flutter/material.dart';

void main() => runApp(MyFormApp());

class MyFormApp extends StatefulWidget {
  @override
  _MyFormAppState createState() => _MyFormAppState();
}

class _MyFormAppState extends State<MyFormApp> {
  String? gender;
  String dropdownValue = 'Flutter';
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Multiple Widgets")),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            TextField(decoration: InputDecoration(labelText: "Enter Name")),
            Row(children: [
              Radio(
                value: "Male",
                groupValue: gender,
                onChanged: (val) => setState(() => gender = val),
              ),
              Text("Male"),
              Radio(
                value: "Female",
                groupValue: gender,
                onChanged: (val) => setState(() => gender = val),
              ),
              Text("Female")
            ]),
            DropdownButton(
              value: dropdownValue,
              items: ['Flutter', 'React', 'Vue']
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (val) => setState(() => dropdownValue = val!),
            ),
            ElevatedButton(
                onPressed: () async {
                  DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2030));
                  setState(() => selectedDate = picked);
                },
                child: Text("Select Date")),
          ]),
        ),
      ),
    );
  }
}

