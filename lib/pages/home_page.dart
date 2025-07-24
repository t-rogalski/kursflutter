import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/size.dart';
import 'package:flutter_application_1/widgets/characters_section.dart';
import 'package:flutter_application_1/widgets/contact_section.dart';
import 'package:flutter_application_1/widgets/drawer_mobile.dart';
import 'package:flutter_application_1/widgets/footer.dart';
import 'package:flutter_application_1/widgets/main_desktop.dart';
import 'package:flutter_application_1/widgets/main_mobile.dart';
import 'package:flutter_application_1/widgets/navbar_desktop.dart';
import 'package:flutter_application_1/widgets/navbar_mobile.dart';
import 'package:flutter_application_1/widgets/skills_desktop.dart';
import 'package:flutter_application_1/widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: _scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kminWidth
              ? null
              : DrawerMobile(
                  onNavItemTap: (int navIndex) {
                    _scaffoldKey.currentState?.closeEndDrawer();
                    scrollToSection(navIndex);
                  },
                ),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key: navbarKeys.first),
                //NAVBAR
                constraints.maxWidth >= kminWidth
                    ? NavbarDesktop(
                        onNavMenuTap: (int navIndex) {
                          scrollToSection(navIndex);
                        },
                      )
                    : NavbarMobile(
                        onMenuTap: () =>
                            _scaffoldKey.currentState?.openEndDrawer(),
                      ),

                //MAIN
                constraints.maxWidth >= kminWidth
                    ? MainDesktop()
                    : MainMobile(),

                //SKILLS
                Container(
                  key: navbarKeys[1],
                  width: screenWidth,
                  padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: Colors.blueGrey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Co umiem?",
                        style: TextStyle(
                          fontSize: 24,
                          color: CustomColor.whitePrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30),

                      //platforms & skills
                      constraints.maxWidth >= kmedWidth
                          ? SkillsDesktop()
                          : SkillsMobile(),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                //CHARACTERS
                CharactersSection(key: navbarKeys[2]),
                SizedBox(height: 20),

                //CONTACT
                ContactSection(key: navbarKeys[3]),
                SizedBox(height: 20),

                //FOOTER
                Footer(),
              ],
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      //about
      return;
    }

    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
