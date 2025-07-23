import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        "LOGO",
        style: TextStyle(
          fontSize: 32,
          color: CustomColor.whitePrimary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
