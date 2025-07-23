import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';

class IntroMessage extends StatelessWidget {
  const IntroMessage({super.key, this.fontSize = 28, this.widthBtn = 250});
  final double fontSize;
  final double widthBtn;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Jestem Tomek\nAle możesz\nnazywać mnie Staz",
          style: TextStyle(
            fontSize: fontSize,
            color: CustomColor.whitePrimary,
            fontWeight: FontWeight.bold,
            height: 1.5,
          ),
        ),
        SizedBox(height: 15),
        SizedBox(
          width: widthBtn,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: CustomColor.whitePrimary,
              foregroundColor: CustomColor.scaffoldBg,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            ),
            child: Text("Dowiedz się więcej", style: TextStyle(fontSize: 16)),
          ),
        ),
      ],
    );
  }
}
