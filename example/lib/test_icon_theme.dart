import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: Scaffold(body: Center(
    child: IconTheme(
      data: IconThemeData(size: 10),
      child: ToggleButtons(
        children: [Icon(Icons.ac_unit), Icon(Icons.access_alarm)],
        isSelected: [true, false],
      ),
    )
  ))));
}
