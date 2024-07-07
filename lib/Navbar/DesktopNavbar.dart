// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myportfolio/GlobalVariables.dart';

class DesktopNavbar extends StatefulWidget {
  const DesktopNavbar({super.key});

  @override
  State<DesktopNavbar> createState() => _DesktopNavbarState();
}

class _DesktopNavbarState extends State<DesktopNavbar> {
  @override
  void initState() {
    super.initState();
    navbarVariables.valueChanged.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: ClipRRect(
              child: Image.asset(
                'assets/images/NewLogo.png',
                height: 30,
              ),
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  navbarVariables.scrollToSection(navbarVariables.homeKey);
                },
                child: Text(
                  'Home',
                  style: TextStyle(
                    color: navbarVariables.valueChanged.value == 0 ? secondaryColor : primaryColor,
                  ),
                ),
              ),
              // SizedBox(width: 10),
              TextButton(
                onPressed: () {
                  navbarVariables.scrollToSection(navbarVariables.servicesKey);
                },
                child: Text(
                  'Servces',
                  style: TextStyle(
                    color: navbarVariables.valueChanged.value == 1 ? secondaryColor : primaryColor,
                  ),
                ),
              ),
              // SizedBox(width: 10),
              TextButton(
                onPressed: () {
                  navbarVariables.scrollToSection(navbarVariables.projectsKey);
                },
                child: Text(
                  'Websites',
                  style: TextStyle(
                    color: navbarVariables.valueChanged.value == 2 ? secondaryColor : primaryColor,
                  ),
                ),
              ),
              // SizedBox(width: 10),
              TextButton(
                onPressed: () {
                  navbarVariables.scrollToSection(navbarVariables.aboutKey);
                },
                child: Text(
                  'About',
                  style: TextStyle(
                    color: navbarVariables.valueChanged.value == 3 ? secondaryColor : primaryColor,
                  ),
                ),
              ),
              // SizedBox(width: 10),
              TextButton(
                onPressed: () {
                  navbarVariables.scrollToSection(navbarVariables.contactKey);
                },
                child: Text(
                  'Contact',
                  style: TextStyle(
                    color: navbarVariables.valueChanged.value == 4 ? secondaryColor : primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
