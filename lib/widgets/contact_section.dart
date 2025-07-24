import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/widgets/custom_text_field.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLightk,
      child: Column(
        children: [
          Text(
            "Get in touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),
          SizedBox(height: 20),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: Row(
              children: [
                // name
                Flexible(child: CustomTextField(hintText: "Your name")),

                // email
                SizedBox(width: 15),
                Flexible(child: CustomTextField(hintText: "Your email")),
              ],
            ),
          ),
          SizedBox(height: 15),

          // message
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: CustomTextField(hintText: "Your message", maxLines: 20),
          ),
          SizedBox(height: 20),

          // send button
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Get in touch"),
              ),
            ),
          ),
          SizedBox(height: 30),

          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 300),
            child: Divider(),
          ),
          SizedBox(height: 15),

          // SNS icon button links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              IconButton(icon: Icon(Icons.face), onPressed: () {}),
              IconButton(icon: Icon(Icons.face_2), onPressed: () {}),
              IconButton(icon: Icon(Icons.face_3), onPressed: () {}),
              IconButton(icon: Icon(Icons.face_4), onPressed: () {}),
              IconButton(icon: Icon(Icons.face_5), onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
