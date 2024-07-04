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
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: navbarVariables.primaryColor),
                      ),
                      Text(
                        "My name is Scott Bebington, i am a passionate software developer specializing in full-stack web and app development. "
                        "I graduated from the University of Pretoria in South Africa with a degree in Computer Science.",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
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
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: navbarVariables.primaryColor),
          ),
          Text(
            "I have experience in designing and developing robust web applications, handling both frontend and backend aspects."
            "My technical skills include proficiency in languages such as JavaScript, Dart, Python and C++, and frameworks like React.js, Node.js, and Flutter.",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
