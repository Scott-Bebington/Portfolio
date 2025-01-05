// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:myportfolio/Contact/ContactMe.dart';
import 'package:myportfolio/GlobalVariables.dart';

class MobileContact extends StatefulWidget {
  const MobileContact({super.key});

  @override
  State<MobileContact> createState() => _MobileContactState();
}

class _MobileContactState extends State<MobileContact> {
  String sendText = 'Send';

  void _showSnackBar(String message, bool sucess) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: sucess ? Colors.green : Colors.red,
        content: Center(child: Text(message)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: navbarVariables.contactKey,
      width: MediaQuery.of(context).size.width,
      constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
      padding: EdgeInsets.only(left: 20, right: 20, top: 75, bottom: 10),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Get in touch',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 75, fontWeight: FontWeight.bold, color: primaryColor),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.email,
                color: primaryColor,
              ),
              SizedBox(width: 10),
              Text(
                'scottbebington@gmail.com',
                style: TextStyle(fontSize: 20, color: primaryColor),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.phone,
                color: primaryColor,
              ),
              SizedBox(width: 10),
              Text(
                '+ 27 71 608 9080',
                style: TextStyle(fontSize: 20, color: primaryColor),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // IconButton(
              //   onPressed: () {
              //     launchURL('https://www.instagram.com/scott_bebington/');
              //   },
              //   icon: Icon(FontAwesomeIcons.instagram, color: primaryColor),
              // ),
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
          SizedBox(height: 50),
          Text(
            'Send me a message',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: primaryColor),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: TextField(
              controller: ContactVariables.nameController,
              decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(
                  color: primaryColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: tertiaryColor,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: TextField(
              controller: ContactVariables.emailController,
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(
                  color: primaryColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: tertiaryColor,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: TextField(
              controller: ContactVariables.phoneController,
              decoration: InputDecoration(
                labelText: "Phone",
                labelStyle: TextStyle(
                  color: primaryColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: tertiaryColor,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: TextField(
              controller: ContactVariables.subjectController,
              decoration: InputDecoration(
                labelText: "Message",
                labelStyle: TextStyle(
                  color: primaryColor,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: tertiaryColor,
                  ),
                ),
              ),
              maxLines: null,
              minLines: 7,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(primaryColor),
              ),
              onPressed: () async {
                if (!ContactVariables.checkControllersArentEmpty()) {
                  _showSnackBar("Please fill in all fields", false);
                  return;
                }

                if (!ContactVariables.checkEmailRegex()) {
                  _showSnackBar("Invalid email address", false);
                  return;
                }

                setState(() {
                  sendText = 'Sending...';
                });

                if (await ContactVariables.sendEmail()) {
                  _showSnackBar("Email sent sucessfully", true);
                } else {
                  _showSnackBar("Email failed to send", false);
                }

                setState(() {
                  sendText = 'Send';
                });
              },
              child: Text(sendText, style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}
