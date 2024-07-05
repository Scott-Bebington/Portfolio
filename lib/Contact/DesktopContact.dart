// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:myportfolio/GlobalVariables.dart';
import 'package:emailjs/emailjs.dart' as emailjs;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DesktopContact extends StatefulWidget {
  const DesktopContact({super.key});

  @override
  State<DesktopContact> createState() => _DesktopContactState();
}

class _DesktopContactState extends State<DesktopContact> {
  TextEditingController nameController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

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
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(50),
      decoration: BoxDecoration(
        color: navbarVariables.backgroundColor,
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
            style: TextStyle(fontSize: 75, fontWeight: FontWeight.bold, color: navbarVariables.primaryColor),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: navbarVariables.primaryColor,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'scottbebington@gmail.com',
                    style: TextStyle(fontSize: 20, color: navbarVariables.primaryColor),
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
                    color: navbarVariables.primaryColor,
                  ),
                  SizedBox(width: 10),
                  Text(
                    '+ 27 71 608 9080',
                    style: TextStyle(fontSize: 20, color: navbarVariables.primaryColor),
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
                children: [
                  IconButton(
                    onPressed: () {
                      launchURL('https://www.instagram.com/scott_bebington/');
                    },
                    icon: Icon(FontAwesomeIcons.instagram, color: navbarVariables.primaryColor),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      launchURL('https://www.linkedin.com/in/scott-bebington/');
                    },
                    icon: Icon(FontAwesomeIcons.linkedin, color: navbarVariables.primaryColor),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      launchURL('https://github.com/Scott-Bebington');
                    },
                    icon: Icon(FontAwesomeIcons.github, color: navbarVariables.primaryColor),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      launchURL('https://wa.me/27716089080');
                    },
                    icon: Icon(FontAwesomeIcons.whatsapp, color: navbarVariables.primaryColor),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 100),
          Text(
            'Send me a message',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: navbarVariables.primaryColor),
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
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          labelText: "Name",
                          labelStyle: TextStyle(
                            color: navbarVariables.secondaryColor,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: navbarVariables.secondaryColor,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: navbarVariables.secondaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: navbarVariables.secondaryColor,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: navbarVariables.secondaryColor,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: navbarVariables.secondaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: TextField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          labelText: "Phone",
                          labelStyle: TextStyle(
                            color: navbarVariables.secondaryColor,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: navbarVariables.secondaryColor,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: navbarVariables.secondaryColor,
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
                width: MediaQuery.of(context).size.width * 0.3,
                child: TextField(
                  controller: subjectController,
                  decoration: InputDecoration(
                    labelText: "Message",
                    labelStyle: TextStyle(
                      color: navbarVariables.secondaryColor,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: navbarVariables.secondaryColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: navbarVariables.secondaryColor,
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
                backgroundColor: WidgetStateProperty.all(navbarVariables.primaryColor),
              ),
              onPressed: () async {
                await dotenv.load();
                setState(() {
                  sendText = 'Sending...';
                });

                if (nameController.text.isEmpty || subjectController.text.isEmpty || emailController.text.isEmpty || phoneController.text.isEmpty) {
                  setState(() {
                    sendText = 'Send';
                  });
                  _showSnackBar("Please fill in all fields", false);
                  return;
                }

                if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(emailController.text)) {
                  setState(() {
                    sendText = 'Send';
                  });
                  _showSnackBar("Invalid email address", false);
                  return;
                }

                Map<String, dynamic> templateParams = {
                  'from_name': nameController.text,
                  'to_name': 'Scott Bebington',
                  'message': subjectController.text,
                  'reply_to': emailController.text,
                  'from_phone': phoneController.text,
                };

                try {
                  await emailjs.send(
                    dotenv.env['EMAILJS_SERVICE_KEY']!,
                    dotenv.env['EMAILJS_TEMPLATE_KEY']!,
                    templateParams,
                    emailjs.Options(
                      publicKey: dotenv.env['EMAILJS_PUBLIC_KEY']!,
                      privateKey: dotenv.env['EMAILJS_PRIVATE_KEY']!,
                    ),
                  );

                  setState(() {
                    sendText = 'Send';
                    nameController.clear();
                    subjectController.clear();
                    emailController.clear();
                    phoneController.clear();
                  });
                  _showSnackBar("Email sent successfully", true);
                } catch (e) {
                  print(e);
                  setState(() {
                    sendText = 'Send';
                  });
                  _showSnackBar("Email failed to send", false);
                }
              },
              child: Text(sendText, style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}
