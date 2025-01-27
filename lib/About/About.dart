// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myportfolio/About/DesktopAbout.dart';
import 'package:myportfolio/About/MobileAbout.dart';
import 'package:myportfolio/About/TabletAbout.dart';
import 'package:myportfolio/GlobalVariables.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('About'),
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
        if (visiblePercentage > 50) {
          navbarVariables.valueChanged.value = 3;
        }
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 1000) {
            return DesktopAbout();
          } else if (constraints.maxWidth >= 600) {
            return TabletAbout();
          } else {
            return MobileAbout();
          }
        },
      ),
    );
  }
}