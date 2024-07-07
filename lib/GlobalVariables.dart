// ignore_for_file: file_names, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void launchURL(String url) async {
  if (!await launchUrl(Uri.parse(url))) {
    print('Could not launch $url');
  }
}

Color primaryColor = Color(0xff1d3557);
Color secondaryColor = Color(0xffe63946);
Color tertiaryColor = Color(0xffa8dadc);
Color backgroundColor = Color.fromARGB(255, 233, 231, 231);

class DesktopVariables {
  final double HeadingTextSize = 75;
  final double SubHeadingTextSize = 40;
  final double cardHeadingTextSize = 30;
  final double BodyTextSize = 20;
}

DesktopVariables desktopVariables = DesktopVariables();

class TabletVariables {
  final double HeadingTextSize = 60;
  final double SubHeadingTextSize = 30;
  final double BodyTextSize = 20;
}

TabletVariables tabletVariables = TabletVariables();

class MobileVariables {
  final double HeadingTextSize = 60;
  final double SubHeadingTextSize = 30;
  final double cardHeadingTextSize = 20;
  final double BodyTextSize = 16;
}

MobileVariables mobileVariables = MobileVariables();

class NavbarVariables {
  double xOffSet = 10;
  double yOffSet = 10;
  ScrollController scrollController = ScrollController();

  ValueNotifier<int> valueChanged = ValueNotifier<int>(0);

  final GlobalKey homeKey = GlobalKey();
  final GlobalKey aboutKey = GlobalKey();
  final GlobalKey projectsKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(context, duration: Duration(seconds: 1));
    }
  }
}

NavbarVariables navbarVariables = NavbarVariables();

class EmailJSVariables {
  late String serviceId;
  late String templateId;
  late String publicKey;
  late String privateKey;

}

EmailJSVariables emailJSVariables = EmailJSVariables();
