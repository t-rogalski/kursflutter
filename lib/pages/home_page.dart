import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/navbar_names.dart';

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
          Container(
            height: 100,
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, CustomColor.scaffoldBg],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Text(
                  "LOGO",
                  style: TextStyle(
                    fontSize: 32,
                    color: CustomColor.whitePrimary,
                  ),
                ),
                Spacer(),
                for (String navitem in navbarNames)
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextButton(
                      onPressed: () => {},
                      child: Text(
                        navitem,
                        style: TextStyle(
                          fontSize: 20,
                          color: CustomColor.whitePrimary,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
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
