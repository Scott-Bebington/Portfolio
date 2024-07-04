// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myportfolio/Navbar/DesktopNavbar.dart';
import 'package:myportfolio/Navbar/MobileNavbar.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          // Layout for larger screens
          return DesktopNavbar();
        } else {
          // Layout for smaller screens
          return MobileNavbar();
        }
      },
    );
  }
}
