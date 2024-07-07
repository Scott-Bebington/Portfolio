// ignore_for_file: prefer_const_constructors

import 'package:emailjs/emailjs.dart' as emailjs;
import 'package:flutter/material.dart';

import 'package:myportfolio/Contact/DesktopContact.dart';
import 'package:myportfolio/Contact/MobileContact.dart';
import 'package:myportfolio/Contact/TabletContact.dart';
import 'package:myportfolio/GlobalVariables.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ContactVariables {
  static TextEditingController nameController = TextEditingController();
  static TextEditingController subjectController = TextEditingController();
  static TextEditingController emailController = TextEditingController();
  static TextEditingController phoneController = TextEditingController();

  static void clearControllers() {
    nameController.clear();
    subjectController.clear();
    emailController.clear();
    phoneController.clear();
  }

  static bool checkControllersArentEmpty() {
    return nameController.text.isNotEmpty && subjectController.text.isNotEmpty && emailController.text.isNotEmpty && phoneController.text.isNotEmpty;
  }

  static bool checkEmailRegex() {
    String emailRegex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regExp = RegExp(emailRegex);
    return regExp.hasMatch(emailController.text);
  }

  static Future<bool> sendEmail() async {
    Map<String, dynamic> templateParams = {
      'from_name': nameController.text,
      'to_name': 'Scott Bebington',
      'message': subjectController.text,
      'reply_to': emailController.text,
      'from_phone': phoneController.text,
    };

    try {
      
      await emailjs.send(
        emailJSVariables.serviceId,
        emailJSVariables.templateId,
        templateParams,
        emailjs.Options(
          publicKey: emailJSVariables.publicKey,
          privateKey: emailJSVariables.privateKey,
        ),
      );

      clearControllers();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}

ContactVariables contactVariables = ContactVariables();

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('Contact'),
      onVisibilityChanged: (visibilityInfo) {
        var visiblePercentage = visibilityInfo.visibleFraction * 100;
        if (visiblePercentage > 50) {
          navbarVariables.valueChanged.value = 3;
        }
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 1000) {
            return DesktopContact();
          } else if (constraints.maxWidth >= 700) {
            return TabletContact();
          } else {
            return MobileContact();
          }
        },
      ),
    );
  }
}
