// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myportfolio/Contact/DesktopContact.dart';
import 'package:myportfolio/Contact/MobileContact.dart';
import 'package:myportfolio/Contact/TabletContact.dart';
import 'package:myportfolio/GlobalVariables.dart';
import 'package:visibility_detector/visibility_detector.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('Contact'),
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
        if (visiblePercentage > 50) {
          navbarVariables.valueChanged.value = 3;
        }
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 1000) {
            return DesktopContact();
          } else if (constraints.maxWidth >= 700) {
            return TabletContact();
          } else {
            return MobileContact();
          }
        },
      ),
    );
  }
}
