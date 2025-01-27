// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myportfolio/GlobalVariables.dart';

class TabletAbout extends StatefulWidget {
  const TabletAbout({super.key});

  @override
  State<TabletAbout> createState() => _TabletAboutState();
}

class _TabletAboutState extends State<TabletAbout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: navbarVariables.aboutKey,
      // height: MediaQuery.of(context).size.height,
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
      padding: EdgeInsets.only(left: 50, right: 50, top: 75, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // Clip the image to the rounded shape
                child: Image.asset(
                  'assets/images/MyPhoto.JPG',
                  fit: BoxFit.fitWidth,
                  // height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.width * 0.4,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About Me',
                        style: TextStyle(fontSize: tabletVariables.SubHeadingTextSize, fontWeight: FontWeight.bold, color: primaryColor),
                      ),
                      Text(
                        "My name is Scott Bebington, I am a passionate software developer specializing in full-stack web and app development. "
                        "I graduated from the University of Pretoria in South Africa with a degree in Computer Science.",
                        style: TextStyle(fontSize: tabletVariables.BodyTextSize, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(),
          SizedBox(height: 20),
          Text(
            'Professional Background',
            style: TextStyle(fontSize: tabletVariables.SubHeadingTextSize, fontWeight: FontWeight.bold, color: primaryColor),
          ),
          Text(
            "I have experience in designing and developing robust web applications, handling both frontend and backend aspects."
            " My technical skills include proficiency in languages such as JavaScript, Dart, Java and C++, and frameworks like React.js, Vue.js, and Flutter.",
            style: TextStyle(fontSize: tabletVariables.BodyTextSize, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
