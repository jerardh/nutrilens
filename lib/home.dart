import 'package:calorie_tracker/imagepicker.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 40),
      Text("Welcome"),
      SizedBox(height: 10),
      ImagePick()
    ]);
  }
}
