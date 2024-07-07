// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myportfolio/GlobalVariables.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class TabletHomepage extends StatefulWidget {
  const TabletHomepage({super.key});

  @override
  State<TabletHomepage> createState() => _TabletHomepageState();
}

class _TabletHomepageState extends State<TabletHomepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: navbarVariables.homeKey,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: backgroundColor,
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
            left: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width * 0.9) - 100,
                  child: Text(
                    'Unique websites for your unique business',
                    style: TextStyle(fontSize: tabletVariables.HeadingTextSize, fontWeight: FontWeight.bold, color: primaryColor),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.55,
                  child: Text(
                    'Crafting websites that are tailored to your business needs.',
                    style: TextStyle(
                      fontSize: tabletVariables.BodyTextSize,
                      color: secondaryColor,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(primaryColor),
                  ),
                  onPressed: () {
                    navbarVariables.scrollToSection(navbarVariables.contactKey);
                  },
                  child: Text('Get in touch', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            left: 50,
            child: Row(
              children: [
                // IconButton(
                //   onPressed: () {
                //     launchURL('https://www.instagram.com/scott_bebington/');
                //   },
                //   icon: Icon(FontAwesomeIcons.instagram, color: navbarVariables.primaryColor),
                // ),
                SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    launchURL('https://www.linkedin.com/in/scott-bebington/');
                  },
                  icon: Icon(FontAwesomeIcons.linkedin, color: primaryColor),
                ),
                SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    launchURL('https://github.com/Scott-Bebington');
                  },
                  icon: Icon(FontAwesomeIcons.github, color: primaryColor),
                ),
                SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    launchURL('https://wa.me/27716089080');
                  },
                  icon: Icon(FontAwesomeIcons.whatsapp, color: primaryColor),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.65,
              height: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(
                color: tertiaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(1000),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width * 0.05,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              child: Image.asset(
                'assets/images/HomepageImage.png',
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width * 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
