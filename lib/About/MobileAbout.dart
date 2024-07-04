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
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: navbarVariables.backgroundColor,
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
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // Clip the image to the rounded shape
                child: Image.asset(
                  'assets/images/MyPhoto.JPG',
                  fit: BoxFit.fitHeight,
                  height: 75,
                ),
              ),
              SizedBox(width: 20),
              Text(
                'About Me',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: navbarVariables.primaryColor),
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(height: 20),
              Divider(),
              SizedBox(height: 20),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.github,
                      color: navbarVariables.primaryColor,
                      size: 60,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Background',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: navbarVariables.primaryColor),
                  ),
                ],
              ),
              Text(
                "I have experience in designing and developing robust web applications, handling both frontend and backend aspects."
                "My technical skills include proficiency in languages such as JavaScript, Dart, Python and C++, and frameworks like React.js, Node.js, and Flutter.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
