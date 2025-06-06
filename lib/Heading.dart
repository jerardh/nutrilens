import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Heading extends StatelessWidget {
  @override
  String text = "Calorie Tracker";
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.white, fontSize: 20),
    );
  }
}
