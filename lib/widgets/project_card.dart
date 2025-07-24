import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/utils/character_utils.dart';

import 'dart:js' as js;

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.character});
  final CharacterUtils character;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 300,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            character.image,
            height: 140,
            width: 260,
            fit: BoxFit.cover,
          ),
          // title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              character.title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          // subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              character.subtitle,
              style: TextStyle(fontSize: 10, color: CustomColor.whiteSecondary),
            ),
          ),
          Spacer(),
          // footer
          Container(
            height: 40,
            color: CustomColor.bgLightk,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                Text(
                  "Sprawdź też:",
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                    fontSize: 12,
                  ),
                ),
                Spacer(),
                if (character.youtubeLink != null)
                  IconButton(
                    padding: EdgeInsets.all(0),
                    constraints: BoxConstraints(),
                    icon: Icon(Icons.play_arrow),
                    onPressed: () {
                      js.context.callMethod("open", [character.youtubeLink]);
                    },
                  ),
                if (character.webLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: IconButton(
                      padding: EdgeInsets.all(0),
                      constraints: BoxConstraints(),
                      icon: Icon(Icons.web_asset),
                      onPressed: () {
                        js.context.callMethod("open", [character.webLink]);
                      },
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
