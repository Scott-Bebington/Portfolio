// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myportfolio/About/DesktopAbout.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          return DesktopAbout();
        } else {
          // Layout for smaller screens
          return Container(
            color: Colors.green,
            child: Center(
              child: Text(
                'Small Screen Layout',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          );
        }
      },
    );
  }
}