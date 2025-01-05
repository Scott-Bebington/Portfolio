// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:myportfolio/GlobalVariables.dart';

class MobileAbout extends StatefulWidget {
  const MobileAbout({super.key});

  @override
  State<MobileAbout> createState() => _MobileAboutState();
}

class _MobileAboutState extends State<MobileAbout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: navbarVariables.aboutKey,
      constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
      ),
      padding: EdgeInsets.only(left: 20, right: 20, top: 75, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              if (MediaQuery.of(context).size.width > 360) ...[
                ClipRRect(
                  borderRadius: BorderRadius.circular(20), // Clip the image to the rounded shape
                  child: Image.asset(
                    'assets/images/MyPhoto.JPG',
                    fit: BoxFit.fitHeight,
                    height: 75,
                  ),
                ),
                SizedBox(width: 20),
              ],
              Text(
                'About Me',
                style: TextStyle(fontSize: mobileVariables.SubHeadingTextSize, fontWeight: FontWeight.bold, color: primaryColor),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My name is Scott Bebington, I am a passionate software developer specializing in full-stack web and app development. "
                "I graduated from the University of Pretoria in South Africa with a degree in Computer Science.",
                style: TextStyle(fontSize: mobileVariables.BodyTextSize, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 20),
              Divider(),
              SizedBox(height: 20),
              Row(
                children: [
                  if (MediaQuery.of(context).size.width > 360) ...[
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: primaryColor,
                        size: 60,
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                  Text(
                    'Background',
                    style: TextStyle(fontSize: mobileVariables.SubHeadingTextSize, fontWeight: FontWeight.bold, color: primaryColor),
                  ),
                ],
              ),
              Text(
                "I have experience in designing and developing robust web applications, handling both frontend and backend aspects."
                " My technical skills include proficiency in languages such as JavaScript, Dart, Java and C++, and frameworks like React.js, Vue.js, and Flutter.",
                style: TextStyle(fontSize: mobileVariables.BodyTextSize, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
