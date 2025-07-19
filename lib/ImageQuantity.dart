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
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              width: 230,
              child: Slider(
                value: _quantity,
                activeColor: AppColors.primaryDarker,
                inactiveColor: AppColors.divider,
                onChanged: (double value) {
                  setState(() {
                    _quantity = value;
                    _controller.text = (_quantity*1000).toStringAsFixed(2);
                  });
                },
              )),
          SizedBox(
              width: 80,
              child: TextField(
                  controller: _controller,
                  onChanged: (String value) {
                    setState(() {
                      _quantity = double.parse(value)/1000;
                    });
                  },
                  maxLength: 4,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)))))
        ]));
  }
}
