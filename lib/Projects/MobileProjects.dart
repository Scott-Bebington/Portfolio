// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myportfolio/GlobalVariables.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MobileProjects extends StatefulWidget {
  const MobileProjects({super.key});

  @override
  State<MobileProjects> createState() => _MobileProjectsState();
}

class _MobileProjectsState extends State<MobileProjects> {
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
                    height: 160,
                  ),
                ),
              ] else ...[
                ClipRRect(
                  child: Image.asset(
                    imagepath,
                    height: 160,
                  ),
                ),
              ],
              SizedBox(height: 10),
              Text(
                Name,
                style: TextStyle(fontSize: mobileVariables.cardHeadingTextSize, fontWeight: FontWeight.bold, color: primaryColor),
              ),
              SizedBox(height: 10),
              Text(
                ApplicationType,
                style: TextStyle(fontSize: mobileVariables.BodyTextSize, color: secondaryColor),
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
      padding: EdgeInsets.only(top: 75, left: 10, right: 10, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Handcrafted Websites',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: mobileVariables.HeadingTextSize, fontWeight: FontWeight.bold, color: primaryColor),
              ),
              Text(
                'Showcasing Innovation in Web Development',
                style: TextStyle(
                  fontSize: mobileVariables.BodyTextSize,
                  color: secondaryColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 320,
            width: MediaQuery.of(context).size.width,
            child: CarouselSlider(
              items: [
                CustomContainer('assets/images/Bebvest.png', 'Bebvest (Pty) Ltd', 'Web Application', 'https://bebvest.com/'),
                CustomContainer('assets/images/X.svg', 'X Clone', 'Web Application', 'https://mini-project12.vercel.app'),
                CustomContainer('assets/images/Seattle.png', 'Seattle Coffee', 'Mobile Application', null),
                CustomContainer('assets/images/TailWaggr.png', 'TailWaggr', 'Web/Mobile Application', 'https://tailwaggr.web.app/'),
              ],
              options: CarouselOptions(
                height: 300,
                aspectRatio: 1,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
              ),
            ),
          ),
          Container()

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
