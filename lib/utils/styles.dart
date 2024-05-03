import 'package:flutter/material.dart';

abstract class AppColors {
  static const mainColor = Colors.red;
  static const secondaryColor = Colors.green;
  static const mainTextColor = Colors.blue;
}

abstract class AppTextStyles {
  static const headline = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
  );
}

abstract class AppImages {
  static const logo = "assets/image.png";
}
