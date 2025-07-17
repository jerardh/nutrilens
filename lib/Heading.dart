import 'package:calorie_tracker/utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'utils/AppText.dart';

class Heading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      AppText.title,
      style: TextStyle(color: AppColors.textPrimary, fontSize: AppText.primarySize),
    );
  }
}
