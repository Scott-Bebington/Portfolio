// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:myportfolio/GlobalVariables.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class DesktopHomepage extends StatefulWidget {
  const DesktopHomepage({super.key});

  @override
  State<DesktopHomepage> createState() => _DesktopHomepageState();
}

class _DesktopHomepageState extends State<DesktopHomepage> with SingleTickerProviderStateMixin {
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
          Container(
            padding: EdgeInsets.all(50),
            width: MediaQuery.of(context).size.width > 1215 ? MediaQuery.of(context).size.width * 0.6 : MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ClipRRect(
                    //   // borderRadius: BorderRadius.circular(100),
                    //   child: Image.asset(
                    //     'assets/images/NewLogo.png',
                    //     width: 600,
                    //   ),
                    // ),
                    // SizedBox(height: 30),
                    Text(
                      'Unique websites for your unique business',
                      style: TextStyle(fontSize: desktopVariables.HeadingTextSize, fontWeight: FontWeight.bold, color: primaryColor),
                    ).animate().moveX(duration: Duration(milliseconds: 750), begin: -MediaQuery.of(context).size.width, end: 0, curve: Curves.easeOut),
                    Text(
                      'Crafting websites that are tailored to your business needs.',
                      style: TextStyle(
                        fontSize: desktopVariables.BodyTextSize,
                        color: secondaryColor,
                      ),
                    ).animate().moveX(duration: Duration(milliseconds: 750), begin: -MediaQuery.of(context).size.width, end: 0, curve: Curves.easeOut),
                    SizedBox(height: 20),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(primaryColor),
                      ),
                      onPressed: () {
                        navbarVariables.scrollToSection(navbarVariables.contactKey);
                      },
                      child: Text('Get in touch', style: TextStyle(color: Colors.white)),
                    ).animate().moveX(duration: Duration(milliseconds: 750), begin: -MediaQuery.of(context).size.width, end: 0, curve: Curves.easeOut),
                  ],
                ),
                Row(
                  children: [
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
                ).animate().moveY(delay: Duration(seconds: 1) , duration: Duration(milliseconds: 750), begin: MediaQuery.of(context).size.height, end: 0, curve: Curves.easeOut),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.35,
              decoration: BoxDecoration(
                color: tertiaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(1000),
                ),
              ),
            ),
          ).animate().moveY(delay: Duration(seconds: 1) , duration: Duration(milliseconds: 750), begin: MediaQuery.of(context).size.height, end: 0, curve: Curves.easeOut),
          Positioned(
            bottom: MediaQuery.of(context).size.width * 0.05,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              child: Image.asset(
                'assets/images/HomepageImage.png',
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width * 0.4,
              ),
            ),
          ).animate().moveY(delay: Duration(seconds: 1) , duration: Duration(milliseconds: 750), begin: MediaQuery.of(context).size.height, end: 0, curve: Curves.easeOut),
        ],
      ),
    );
  }
}
