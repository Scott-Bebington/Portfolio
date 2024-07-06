// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myportfolio/GlobalVariables.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class DesktopHomepage extends StatefulWidget {
  const DesktopHomepage({super.key});

  @override
  State<DesktopHomepage> createState() => _DesktopHomepageState();
}

class _DesktopHomepageState extends State<DesktopHomepage> with SingleTickerProviderStateMixin  {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: navbarVariables.homeKey,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: backgroundColor,
        // image: DecorationImage(
        //   image: Image.asset('assets/images/HomepageImage.jpg',opacity: AnimationController(vsync: this, value: 0.5),).image,
        //   fit: BoxFit.cover,
        // ),
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
                    ),
                    Text(
                      'Crafting websites that are tailored to your business needs.',
                      style: TextStyle(
                        fontSize: desktopVariables.BodyTextSize,
                        color: secondaryColor,
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
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Stack(
              children: [

                // Positioned(
                  
                //   child: ClipRRect(
                //     // borderRadius: BorderRadius.circular(100),
                //     child: Image.asset(
                //       'assets/images/HomepageImage.jpg',
                //       fit: BoxFit.fitWidth,
                //       width: MediaQuery.of(context).size.width * 0.4,
                //     ),
                //   ),
                // ),

                // Positioned(
                //   bottom: 0,
                //   right: 0,
                //   child: Container(
                //     width: MediaQuery.of(context).size.width * 0.4,
                //     height: MediaQuery.of(context).size.width * 0.4,
                //     decoration: BoxDecoration(
                //       color: Colors.black,
                //       borderRadius: BorderRadius.only(
                //         topLeft: Radius.circular(1000),
                //       ),
                //     ),
                //   ),
                // ),
                // Positioned(
                //   bottom: 0,
                //   right: 0,
                //   child: Container(
                //     width: MediaQuery.of(context).size.width * 0.4 - 2,
                //     height: MediaQuery.of(context).size.width * 0.4 - 2,
                //     decoration: BoxDecoration(
                //       color: navbarVariables.backgroundColor,
                //       borderRadius: BorderRadius.only(
                //         topLeft: Radius.circular(1000),
                //       ),
                //     ),
                //   ),
                // ),
                // Positioned(
                //   bottom: 0,
                //   right: 0,
                //   child: Container(
                //     width: MediaQuery.of(context).size.width * 0.35,
                //     height: MediaQuery.of(context).size.width * 0.35,
                //     decoration: BoxDecoration(
                //       color: navbarVariables.primaryColor,
                //       borderRadius: BorderRadius.only(
                //         topLeft: Radius.circular(1000),
                //       ),
                //     ),
                //   ),
                // ),
                // Positioned(
                //   bottom: 0,
                //   right: 0,
                //   child: Container(
                //     width: MediaQuery.of(context).size.width * 0.35 - 5,
                //     height: MediaQuery.of(context).size.width * 0.35 - 5,
                //     decoration: BoxDecoration(
                //       color: navbarVariables.backgroundColor,
                //       borderRadius: BorderRadius.only(
                //         topLeft: Radius.circular(1000),
                //       ),
                //     ),
                //   ),
                // ),
                // Positioned(
                //   bottom: MediaQuery.of(context).size.width * 0.025,
                //   right: MediaQuery.of(context).size.width * 0.175,
                //   child: ClipRRect(
                //     // borderRadius: BorderRadius.circular(100),
                //     child: Image.asset(
                //       'assets/images/handcraft.png',
                //       fit: BoxFit.fitWidth,
                //       width: MediaQuery.of(context).size.width * 0.125,
                //     ),
                //   ),
                // ),
                // Positioned(
                //   bottom: MediaQuery.of(context).size.width * 0.025,
                //   right: MediaQuery.of(context).size.width * 0.025,
                //   child: ClipRRect(
                //     // borderRadius: BorderRadius.circular(100),
                //     child: Image.asset(
                //       'assets/images/unique.png',
                //       fit: BoxFit.fitWidth,
                //       width: MediaQuery.of(context).size.width * 0.125,
                //     ),
                //   ),
                // ),
                // Positioned(
                //   bottom: MediaQuery.of(context).size.width * 0.175,
                //   right: MediaQuery.of(context).size.width * 0.025,
                //   child: ClipRRect(
                //     // borderRadius: BorderRadius.circular(100),
                //     child: Image.asset(
                //       'assets/images/planet-earth.png',
                //       fit: BoxFit.fitWidth,
                //       width: MediaQuery.of(context).size.width * 0.125,
                //     ),
                //   ),
                // ),
              
              ],
            ),
          ),
        ],
      ),
    );
  }
}
