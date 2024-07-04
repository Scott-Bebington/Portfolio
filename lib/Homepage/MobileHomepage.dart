// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myportfolio/GlobalVariables.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class MobileHomepage extends StatefulWidget {
  const MobileHomepage({super.key});

  @override
  State<MobileHomepage> createState() => _MobileHomepageState();
}

class _MobileHomepageState extends State<MobileHomepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: navbarVariables.backgroundColor,
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 75,
            left: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 20,
                  child: Text(
                    'Unique websites for your unique business',
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: navbarVariables.primaryColor),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 20,
                  child: Text(
                    'Crafting websites that are tailored to your business needs.',
                    style: TextStyle(
                      fontSize: 20,
                      color: navbarVariables.secondaryColor,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(navbarVariables.primaryColor),
                  ),
                  onPressed: () {},
                  child: Text('Get in touch', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.instagram, color: navbarVariables.primaryColor, size: 30),
                ),
                SizedBox(width: 5),
                IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.linkedin, color: navbarVariables.primaryColor, size: 30),
                ),
                SizedBox(width: 5),
                IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.github, color: navbarVariables.primaryColor, size: 30),
                ),
                SizedBox(width: 5),
                IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.whatsapp, color: navbarVariables.primaryColor, size: 30),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(1000),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5 - 2,
              height: MediaQuery.of(context).size.width * 0.5 - 2,
              decoration: BoxDecoration(
                color: navbarVariables.backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(1000),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.45,
              height: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(
                color: navbarVariables.primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(1000),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.45 - 5,
              height: MediaQuery.of(context).size.width * 0.45 - 5,
              decoration: BoxDecoration(
                color: navbarVariables.backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(1000),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width * 0.025,
            right: MediaQuery.of(context).size.width * 0.225,
            child: ClipRRect(
              // borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/handcraft.png',
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width * 0.15,
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width * 0.025,
            right: MediaQuery.of(context).size.width * 0.025,
            child: ClipRRect(
              // borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/unique.png',
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width * 0.15,
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width * 0.225,
            right: MediaQuery.of(context).size.width * 0.025,
            child: ClipRRect(
              // borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/planet-earth.png',
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width * 0.15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
