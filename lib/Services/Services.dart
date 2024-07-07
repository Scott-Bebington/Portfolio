// ignore_for_file: prefer_const_constructors

import 'package:emailjs/emailjs.dart' as emailjs;
import 'package:flutter/material.dart';

import 'package:myportfolio/Services/DesktopServices.dart';
import 'package:myportfolio/Services/MobileServices.dart';
import 'package:myportfolio/Services/TabletServices.dart';
import 'package:myportfolio/GlobalVariables.dart';
import 'package:visibility_detector/visibility_detector.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('Services'),
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
        if (visiblePercentage > 50) {
          navbarVariables.valueChanged.value = 1;
        }
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 1000) {
            return DesktopServices();
          } else if (constraints.maxWidth >= 600) {
            return TabletServices();
          } else {
            return MobileServices();
          }
        },
      ),
    );
  }
}
