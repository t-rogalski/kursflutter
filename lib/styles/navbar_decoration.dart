import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';

BoxDecoration navbarDecoration() {
  return BoxDecoration(
    gradient: LinearGradient(
      colors: [
        CustomColor.scaffoldBg,
        CustomColor.bgLightk,
        CustomColor.scaffoldBg,
      ],
    ),
    borderRadius: BorderRadius.circular(20),
  );
}
