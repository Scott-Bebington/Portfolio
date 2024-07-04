// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myportfolio/Projects/DesktopProjects.dart';
import 'package:myportfolio/Projects/MobileProjects.dart';
import 'package:myportfolio/GlobalVariables.dart';
import 'package:visibility_detector/visibility_detector.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('Projects'),
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
        if (visiblePercentage > 50) {
          navbarVariables.valueChanged.value = 2;
        }
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 600) {
            return DesktopProjects();
          } else {
            return MobileProjects();
          }
        },
      ),
    );
  }
}
