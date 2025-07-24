import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/size.dart';
import 'package:flutter_application_1/utils/character_utils.dart';
import 'package:flutter_application_1/widgets/drawer_mobile.dart';
import 'package:flutter_application_1/widgets/main_desktop.dart';
import 'package:flutter_application_1/widgets/main_mobile.dart';
import 'package:flutter_application_1/widgets/navbar_desktop.dart';
import 'package:flutter_application_1/widgets/navbar_mobile.dart';
import 'package:flutter_application_1/widgets/project_card.dart';
import 'package:flutter_application_1/widgets/skills_desktop.dart';
import 'package:flutter_application_1/widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: _scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kminWidth ? null : DrawerMobile(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // //NAVBAR
              // constraints.maxWidth >= kminWidth
              //     ? NavbarDesktop()
              //     : NavbarMobile(
              //         onMenuTap: () =>
              //             _scaffoldKey.currentState?.openEndDrawer(),
              //       ),

              // //MAIN
              // constraints.maxWidth >= kminWidth ? MainDesktop() : MainMobile(),

              // //SKILLS
              // Container(
              //   width: screenWidth,
              //   padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
              //   color: Colors.blueGrey,
              //   child: Column(
              //     mainAxisSize: MainAxisSize.min,
              //     children: [
              //       Text(
              //         "Co umiem?",
              //         style: TextStyle(
              //           fontSize: 24,
              //           color: CustomColor.whitePrimary,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //       SizedBox(height: 30),

              //       //platforms & skills
              //       constraints.maxWidth >= kmedWidth
              //           ? SkillsDesktop()
              //           : SkillsMobile(),
              //     ],
              //   ),
              // ),

              //CHARACTERS
              Container(
                width: screenWidth,
                padding: EdgeInsets.fromLTRB(25, 20, 20, 60),
                child: Column(
                  children: [
                    Text(
                      'Tu powinny być projekty',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),

                    //Characters cards
                    ProjectCard(character: charactersList[1]),
                  ],
                ),
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
