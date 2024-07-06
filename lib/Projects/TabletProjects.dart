// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myportfolio/GlobalVariables.dart';

class TabletProjects extends StatefulWidget {
  const TabletProjects({super.key});

  @override
  State<TabletProjects> createState() => _TabletProjectsState();
}

class _TabletProjectsState extends State<TabletProjects> {
  final ScrollController _scrollController = ScrollController();

  String getUrlType(String Url) {
    if (Url.contains('.svg')) {
      return 'svg';
    } else {
      return 'png';
    }
  }

  Widget CustomContainer(String imagepath, String Name, String ApplicationType, String? Url) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          if (Url != null) {
            launchURL(Url);
          }
        },
        child: Container(
          height: 300,
          width: 300,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (getUrlType(imagepath) == 'svg') ...[
                ClipRRect(
                  child: SvgPicture.asset(
                    imagepath,
                    height: 180,
                  ),
                ),
              ] else ...[
                ClipRRect(
                  child: Image.asset(
                    imagepath,
                    height: 180,
                  ),
                ),
              ],
              SizedBox(height: 10),
              Text(
                Name,
                style: TextStyle(fontSize: desktopVariables.cardHeadingTextSize, fontWeight: FontWeight.bold, color: primaryColor),
              ),
              SizedBox(height: 10),
              Text(
                ApplicationType,
                style: TextStyle(fontSize: desktopVariables.BodyTextSize, color: secondaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: navbarVariables.projectsKey,
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
      padding: EdgeInsets.only(top: 75, left: 50, right: 50, bottom: 50),
      child: Column(
        children: [
          Text(
            'Handcrafted Websites',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: tabletVariables.HeadingTextSize, fontWeight: FontWeight.bold, color: primaryColor),
          ),
          Text(
            'Showcasing Innovation in Web Development',
            style: TextStyle(
              fontSize: desktopVariables.BodyTextSize,
              color: secondaryColor,
            ),
          ),
          SizedBox(height: 100),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Scrollbar(
              thumbVisibility: true, // Ensure the scrollbar thumb is always visible
              controller: _scrollController, // Attach a ScrollController
              child: SingleChildScrollView(
                padding: EdgeInsets.only(bottom: 20),
                scrollDirection: Axis.horizontal, // Set scroll direction to horizontal
                controller: _scrollController, // Attach the same ScrollController
                child: Row(
                  children: [
                    CustomContainer('assets/images/Bebvest.png', 'Bebvest (Pty) Ltd', 'Web Application', 'https://bebvest.com/'),
                    SizedBox(width: 20),
                    CustomContainer('assets/images/X.svg', 'X Clone', 'Web Application', 'https://mini-project12.vercel.app'),
                    SizedBox(width: 20),
                    CustomContainer('assets/images/Seattle.png', 'Seattle Coffee', 'Mobile Application', null),
                    SizedBox(width: 20),
                    CustomContainer('assets/images/TailWaggr.png', 'TailWaggr', 'Web/Mobile Application', 'https://tailwaggr.web.app/'),
                  ],
                ),
              ),
            ),
          ),

          // Wrap(
          //   spacing: 20,
          //   runSpacing: 20,
          //   children: [
          //     CustomContainer('assets/images/Bebvest.png', 'Bebvest (Pty) Ltd', 'Web Application', 'https://bebvest.com/'),
          //     CustomContainer('assets/images/X.svg', 'X Clone', 'Web Application', 'https://mini-project12.vercel.app'),
          //     CustomContainer('assets/images/Seattle.png', 'Seattle Coffee', 'Mobile Application', null),
          //     CustomContainer('assets/images/TailWaggr.png', 'TailWaggr', 'Web/Mobile Application', 'https://tailwaggr.web.app/'),
          //   ],
          // ),
        ],
      ),
    );
  }
}
