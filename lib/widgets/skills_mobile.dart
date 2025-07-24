import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 450),
      child: Column(
        children: [
          for (int i = 0; i < platformItems.length; i++)
            Container(
              margin: EdgeInsets.only(bottom: 5),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: CustomColor.bgLight2,
                borderRadius: BorderRadius.circular(5),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                leading: Icon(platformItems[i]["img"]),
                title: Text(platformItems[i]["title"]),
              ),
            ),
          SizedBox(height: 50),

          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              for (int i = 0; i < skillItems.length; i++)
                Chip(
                  backgroundColor: CustomColor.bgLight2,
                  labelStyle: TextStyle(color: CustomColor.whitePrimary),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  label: Text(skillItems[i]["title"]),
                  avatar: Icon(
                    skillItems[i]["img"],
                    color: CustomColor.whitePrimary,
                    size: 20,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
