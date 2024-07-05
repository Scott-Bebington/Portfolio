// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myportfolio/GlobalVariables.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class DesktopHomepage extends StatefulWidget {
  const DesktopHomepage({super.key});

  @override
  State<DesktopHomepage> createState() => _DesktopHomepageState();
}

class _DesktopHomepageState extends State<DesktopHomepage> {
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
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(50),
            width: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Unique websites for your unique business',
                      style: TextStyle(fontSize: 75, fontWeight: FontWeight.bold, color: navbarVariables.primaryColor),
                    ),
                    Text(
                      'Crafting websites that are tailored to your business needs.',
                      style: TextStyle(
                        fontSize: 20,
                        color: navbarVariables.secondaryColor,
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(navbarVariables.primaryColor),
                      ),
                      onPressed: () {
                        navbarVariables.scrollController.animateTo(
                          MediaQuery.of(context).size.height * 3,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Text('Get in touch', style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        launchURL('https://www.instagram.com/scott_bebington/');
                      },
                      icon: Icon(FontAwesomeIcons.instagram, color: navbarVariables.primaryColor),
                    ),
                    SizedBox(width: 10),
                    IconButton(
                      onPressed: () {
                        launchURL('https://www.linkedin.com/in/scott-bebington/');
                      },
                      icon: Icon(FontAwesomeIcons.linkedin, color: navbarVariables.primaryColor),
                    ),
                    SizedBox(width: 10),
                    IconButton(
                      onPressed: () {
                        launchURL('https://github.com/Scott-Bebington');
                      },
                      icon: Icon(FontAwesomeIcons.github, color: navbarVariables.primaryColor),
                    ),
                    SizedBox(width: 10),
                    IconButton(
                      onPressed: () {
                        launchURL('https://wa.me/27716089080');
                      },
                      icon: Icon(FontAwesomeIcons.whatsapp, color: navbarVariables.primaryColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.width * 0.4,
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
                    width: MediaQuery.of(context).size.width * 0.4 - 2,
                    height: MediaQuery.of(context).size.width * 0.4 - 2,
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
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.width * 0.35,
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
                    width: MediaQuery.of(context).size.width * 0.35 - 5,
                    height: MediaQuery.of(context).size.width * 0.35 - 5,
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
                  right: MediaQuery.of(context).size.width * 0.175,
                  child: ClipRRect(
                    // borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/handcraft.png',
                      fit: BoxFit.fitWidth,
                      width: MediaQuery.of(context).size.width * 0.125,
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
                      width: MediaQuery.of(context).size.width * 0.125,
                    ),
                  ),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.width * 0.175,
                  right: MediaQuery.of(context).size.width * 0.025,
                  child: ClipRRect(
                    // borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/planet-earth.png',
                      fit: BoxFit.fitWidth,
                      width: MediaQuery.of(context).size.width * 0.125,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
