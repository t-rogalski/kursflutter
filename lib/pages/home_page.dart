import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/widgets/navbar_desktop.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //MAIN
          NavbarDesktop(),
          //SKILLS
          Container(
            height: 500,
            width: double.maxFinite,
            color: CustomColor.bgLightk,
          ),
          //PROJECTS
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          //CONTACT
          Container(height: 500, width: double.maxFinite),
        ],
      ),
    );
  }
}
