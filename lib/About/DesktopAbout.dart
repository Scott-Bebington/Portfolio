// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myportfolio/GlobalVariables.dart';

class DesktopAbout extends StatefulWidget {
  const DesktopAbout({super.key});

  @override
  State<DesktopAbout> createState() => _DesktopAboutState();
}

class _DesktopAboutState extends State<DesktopAbout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: navbarVariables.aboutKey,
      height: MediaQuery.of(context).size.height,
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
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20), // Clip the image to the rounded shape
            child: Image.asset(
              'assets/images/MyPhoto.JPG',
              fit: BoxFit.fitHeight,
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.height * 0.6,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.6,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'A Bit About Me',
                    style: TextStyle(fontSize: desktopVariables.SubHeadingTextSize, fontWeight: FontWeight.bold, color: primaryColor),
                  ),
                  Text(
                    "My name is Scott Bebington, I am a passionate software developer specializing in full-stack web and app development. "
                    "I graduated from the University of Pretoria in South Africa with a degree in Computer Science.",
                    style: TextStyle(fontSize: desktopVariables.BodyTextSize, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Divider(),
                  SizedBox(height: 20),
                  Text(
                    'Professional Background',
                    style: TextStyle(fontSize: desktopVariables.SubHeadingTextSize, fontWeight: FontWeight.bold, color: primaryColor),
                  ),
                  Text(
                    "I have experience in designing and developing robust web and mobile applications, handling both frontend and backend aspects."
                    " My technical skills include proficiency in languages such as JavaScript, Dart, Java and C++, and frameworks like React.js, Vue.js, and Flutter.",
                    style: TextStyle(fontSize: desktopVariables.BodyTextSize, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
