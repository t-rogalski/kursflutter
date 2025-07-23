import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/styles/navbar_decoration.dart';
import 'package:flutter_application_1/widgets/site_logo.dart';

class NavbarMobile extends StatelessWidget {
  const NavbarMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: navbarDecoration(),
      child: Row(
        children: [
          SiteLogo(onTap: onLogoTap),
          Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: Icon(Icons.menu, color: CustomColor.whitePrimary),
          ),
        ],
      ),
    );
  }
}
