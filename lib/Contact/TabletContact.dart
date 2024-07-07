// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:myportfolio/Contact/ContactMe.dart';
import 'package:myportfolio/GlobalVariables.dart';

class TabletContact extends StatefulWidget {
  const TabletContact({super.key});

  @override
  State<TabletContact> createState() => _TabletContactState();
}

class _TabletContactState extends State<TabletContact> {
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
      // height: MediaQuery.of(context).size.height,
      constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 75, left: 50, right: 50, bottom: 50),
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
            style: TextStyle(fontSize: tabletVariables.HeadingTextSize, fontWeight: FontWeight.bold, color: primaryColor),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: primaryColor,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'scottbebington@gmail.com',
                    style: TextStyle(fontSize: tabletVariables.BodyTextSize, color: primaryColor),
                  ),
                ],
              ),
              SizedBox(width: 20),
              Container(
                width: 2,
                height: 20,
                color: Colors.grey,
              ),
              SizedBox(width: 20),
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
                    style: TextStyle(fontSize: tabletVariables.BodyTextSize, color: primaryColor),
                  ),
                ],
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
          SizedBox(height: 75),
          Text(
            'Send me a message',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: primaryColor),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 192,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
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
                              color: secondaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
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
                              color: secondaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
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
                              color: secondaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
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
                        color: secondaryColor,
                      ),
                    ),
                  ),
                  maxLines: null,
                  minLines: 7,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.6 + 20,
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
              child: Text(sendText, style: TextStyle(color: Colors.white, fontSize: tabletVariables.BodyTextSize)),
            ),
          ),
        ],
      ),
    );
  }
}
