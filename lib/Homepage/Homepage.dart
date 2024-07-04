// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myportfolio/Homepage/DesktopHomepage.dart';
import 'package:myportfolio/Homepage/MobileHomepage.dart';
import 'package:myportfolio/Homepage/TabletHomepage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1000) {
          return DesktopHomepage();
        } else if (constraints.maxWidth >= 600) {
          return TabletHomepage();
        } else {
          return MobileHomepage();
        }
      },
    );
  }
}
