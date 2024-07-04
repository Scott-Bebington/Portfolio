// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myportfolio/About/DesktopAbout.dart';
import 'package:myportfolio/About/MobileAbout.dart';
import 'package:myportfolio/About/TabletAbout.dart';

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
        if (constraints.maxWidth >= 1000) {
          return DesktopAbout();
        } else if (constraints.maxWidth >= 600) {
          return TabletAbout();
        } else {
          return MobileAbout();
        }
      },
    );
  }
}