import 'package:calorie_tracker/utils/AppColors.dart';
import 'package:flutter/material.dart';

class ImageQunatity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ImageQuantityState();
  }
}

class ImageQuantityState extends State<ImageQunatity> {
  var _quantity = 0.3; //300 grams
  @override
  Widget build(BuildContext context) {
    return (Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      SizedBox(
        width: 250,
        child: Slider(
        value: _quantity,
        activeColor: AppColors.primaryDarker,
        inactiveColor: AppColors.divider,
        onChanged: (double value) {
          setState(() {
            _quantity = value;
          });
        },
      )
      ),
      SizedBox(
        width: 40,
        child: TextField(maxLength: 4,keyboardType: TextInputType.number,decoration: InputDecoration(counterText: "")),
      )
    ]));
  }
}
