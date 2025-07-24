import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/navbar_names.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 10, 15),
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: CustomColor.whitePrimary),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
            for (int i = 0; i < navbarIcons.length; i++)
              ListTile(
                titleTextStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
                leading: Icon(navbarIcons[i], color: CustomColor.whitePrimary),
                title: Text(navbarNames[i]),
                onTap: () {},
              ),
          ],
        ),
      ),
    );
  }
}
