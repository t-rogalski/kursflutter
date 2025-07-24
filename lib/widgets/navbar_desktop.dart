import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/navbar_names.dart';
import 'package:flutter_application_1/styles/navbar_decoration.dart';
import 'package:flutter_application_1/widgets/site_logo.dart';

class NavbarDesktop extends StatelessWidget {
  const NavbarDesktop({super.key, required this.onNavMenuTap});
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: navbarDecoration(),
      child: Row(
        children: [
          SiteLogo(onTap: () => {}),
          Spacer(),
          for (int i = 0; i < navbarNames.length; i++)
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TextButton(
                onPressed: () => {onNavMenuTap(i)},
                child: Text(
                  navbarNames[i],
                  style: TextStyle(
                    fontSize: 20,
                    color: CustomColor.whitePrimary,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
