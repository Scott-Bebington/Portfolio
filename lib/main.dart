// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:myportfolio/About/About.dart';
import 'package:myportfolio/Contact/ContactMe.dart';
import 'package:myportfolio/GlobalVariables.dart';
import 'package:myportfolio/Homepage/Homepage.dart';
import 'package:myportfolio/Navbar/Navbar.dart';
import 'package:myportfolio/Projects/Projects.dart';
import 'package:myportfolio/RemoteConfig.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setupRemoteConfig();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scott Bebington Portfolio',
      debugShowCheckedModeBanner: false,
      home: Portfolio(),
    );
  }
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: navbarVariables.scrollController,
            child: Column(
              children: [
                Homepage(),
                AboutMe(),
                Projects(),
                Contact(),
              ],
            ),
          ),
          Navbar(),
        ],
      ),
    );
  }
}
