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
      key: navbarVariables.homeKey,
      constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
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
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 75, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Unique websites for your unique business',
                  style: TextStyle(fontSize: mobileVariables.HeadingTextSize, fontWeight: FontWeight.bold, color: primaryColor),
                ),
                Text(
                  'Crafting websites that are tailored to your business needs.',
                  style: TextStyle(
                    fontSize: mobileVariables.BodyTextSize,
                    color: secondaryColor,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(primaryColor),
                      ),
                      onPressed: () {
                        navbarVariables.scrollToSection(navbarVariables.contactKey);
                      },
                      child: Text('Get in touch', style: TextStyle(color: Colors.white)),
                    ),
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
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            
            ),
            child: Image.asset(
              'assets/images/HomepageImage.png',
              width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.3,
            ),
          ),
        ],
      ),
    );
  }
}
