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
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/images/Logo.jpeg',
              height: 50,
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    navbarVariables.valueChanged.value = 0;
                  });
                  navbarVariables.scrollController.animateTo(
                    0,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text(
                  'Home',
                  style: TextStyle(
                    color: navbarVariables.valueChanged.value == 0 ? navbarVariables.secondaryColor : navbarVariables.primaryColor,
                  ),
                ),
              ),
              SizedBox(width: 10),
              TextButton(
                onPressed: () {
                  setState(() {
                    navbarVariables.valueChanged.value = 1;
                  });
                  navbarVariables.scrollController.animateTo(
                    MediaQuery.of(context).size.height,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text(
                  'About',
                  style: TextStyle(
                    color: navbarVariables.valueChanged.value == 1 ? navbarVariables.secondaryColor : navbarVariables.primaryColor,
                  ),
                ),
              ),
              SizedBox(width: 10),
              TextButton(
                onPressed: () {
                  setState(() {
                    navbarVariables.valueChanged.value = 2;
                  });
                  navbarVariables.scrollController.animateTo(
                    MediaQuery.of(context).size.height * 2,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text(
                  'Projects',
                  style: TextStyle(
                    color: navbarVariables.valueChanged.value == 2 ? navbarVariables.secondaryColor : navbarVariables.primaryColor,
                  ),
                ),
              ),
              SizedBox(width: 10),
              TextButton(
                onPressed: () {
                  setState(() {
                    navbarVariables.valueChanged.value = 3;
                  });
                  navbarVariables.scrollController.animateTo(
                    MediaQuery.of(context).size.height * 3,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                child: Text(
                  'Contact',
                  style: TextStyle(
                    color: navbarVariables.valueChanged.value == 3 ? navbarVariables.secondaryColor : navbarVariables.primaryColor,
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
