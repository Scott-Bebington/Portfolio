
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      print('Could not launch $url');
    }
  }

class NavbarVariables {
  double xOffSet = 10;
  double yOffSet = 10;
  ScrollController scrollController = ScrollController();

  ValueNotifier<int> valueChanged = ValueNotifier<int>(0);

  Color primaryColor = Color(0xff1d3557);
  Color secondaryColor = Color(0xff457b9d);
  Color tertiaryColor = Color(0xffa8dadc);
  Color backgroundColor = Color.fromARGB(255, 233, 231, 231);
}

NavbarVariables navbarVariables = NavbarVariables();