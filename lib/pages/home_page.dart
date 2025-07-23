import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/size.dart';
import 'package:flutter_application_1/widgets/drawer_mobile.dart';
import 'package:flutter_application_1/widgets/navbar_desktop.dart';
import 'package:flutter_application_1/widgets/navbar_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: _scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kminWidth ? null : DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //MAIN
              constraints.maxWidth >= kminWidth
                  ? NavbarDesktop()
                  : NavbarMobile(
                      onMenuTap: () =>
                          _scaffoldKey.currentState?.openEndDrawer(),
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
      },
    );
  }
}
