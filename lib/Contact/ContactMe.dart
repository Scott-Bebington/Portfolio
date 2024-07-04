// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myportfolio/Contact/DesktopContact.dart';
import 'package:myportfolio/Contact/MobileContact.dart';
import 'package:myportfolio/Contact/TabletContact.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1000) {
          return DesktopContact();
        } else if (constraints.maxWidth >= 700) {
          return TabletContact();
        } else {
          return MobileContact();
        }
      },
    );
  }
}
