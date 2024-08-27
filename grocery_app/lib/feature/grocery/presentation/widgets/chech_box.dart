import 'package:flutter/material.dart';

class MyCheckboxWidget extends StatefulWidget {
  @override
  _MyCheckboxWidgetState createState() => _MyCheckboxWidgetState();
}

class _MyCheckboxWidgetState extends State<MyCheckboxWidget> {
  bool isChecked = false; // Initial value is false (unchecked)

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (bool? newValue) {
        setState(() {
          isChecked = newValue ?? false; // Update the checkbox state
        });
      },
      activeColor: Colors.black, // Set the checkmark color to black
    );
  }
}