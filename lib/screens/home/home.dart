import 'package:calorie_tracker/screens/home/components/CalorieInfo.dart';
import 'package:calorie_tracker/datamanager.dart';
import 'package:calorie_tracker/screens/home/components/imagepick.dart' as picker;
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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
      SizedBox( child: Calorieinfo(),height: 200),
      picker.ImagePick()
    ]),
    );
  }
}
