import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/utils/character_utils.dart';
import 'package:flutter_application_1/widgets/project_card.dart';

class CharactersSection extends StatelessWidget {
  const CharactersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
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

          SizedBox(height: 50),

          //Characters cards
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                for (int i = 0; i < charactersList.length; i++)
                  ProjectCard(character: charactersList[i]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
