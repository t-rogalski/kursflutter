import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/widgets/intro_message.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 560),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [
                  CustomColor.scaffoldBg.withAlpha(150),
                  CustomColor.scaffoldBg.withAlpha(150),
                ],
              ).createShader(bounds),
              blendMode: BlendMode.srcATop,
              child: SizedBox.square(
                dimension: screenWidth,
                child: Placeholder(
                  color: CustomColor.whitePrimary,
                  strokeWidth: 3,
                ),
              ),
            ),
            SizedBox(height: 20),
            IntroMessage(fontSize: 24, widthBtn: 220),
          ],
        ),
      ),
    );
  }
}
