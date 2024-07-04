// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myportfolio/GlobalVariables.dart';

class MobileNavbar extends StatefulWidget {
  const MobileNavbar({super.key});

  @override
  State<MobileNavbar> createState() => _MobileNavbarState();
}

class _MobileNavbarState extends State<MobileNavbar> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _firstAnimation;
  late Animation<double> _secondAnimation;
  late Animation<double> _thirdAnimation;
  late Animation<double> _fourthAnimation;
  bool _showFirstButton = false;
  bool _showSecondButton = false;
  bool _showThirdButton = false;
  bool _showFourthButton = false;
  bool _isExpanded = false;

  double initialXOffset = 0.0;
  double initialYOffset = 0.0;

  @override
  void initState() {
    super.initState();
    initialXOffset = navbarVariables.xOffSet;
    initialYOffset = navbarVariables.yOffSet;

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _firstAnimation = Tween<double>(begin: 0, end: 50).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.25, curve: Curves.easeInOut),
      ),
    );

    _secondAnimation = Tween<double>(begin: 0, end: 100).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.25, 0.5, curve: Curves.easeInOut),
      ),
    );

    _thirdAnimation = Tween<double>(begin: 0, end: 150).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.5, 0.75, curve: Curves.easeInOut),
      ),
    );

    _fourthAnimation = Tween<double>(begin: 0, end: 200).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.75, 1, curve: Curves.easeInOut),
      ),
    );

    _controller.addListener(() {
      if (_controller.value > 0.0 && !_showFirstButton) {
        setState(() {
          _showFirstButton = true;
        });
      } else if (_controller.value <= 0.0 && _showFirstButton) {
        setState(() {
          _showFirstButton = false;
        });
      }
      if (_controller.value > 0.25 && !_showSecondButton) {
        setState(() {
          _showSecondButton = true;
        });
      } else if (_controller.value <= 0.25 && _showSecondButton) {
        setState(() {
          _showSecondButton = false;
        });
      }
      if (_controller.value > 0.5 && !_showThirdButton) {
        setState(() {
          _showThirdButton = true;
        });
      } else if (_controller.value <= 0.5 && _showThirdButton) {
        setState(() {
          _showThirdButton = false;
        });
      }
      if (_controller.value > 0.75 && !_showFourthButton) {
        setState(() {
          _showFourthButton = true;
        });
      } else if (_controller.value <= 0.75 && _showFourthButton) {
        setState(() {
          _showFourthButton = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    if (_isExpanded) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: initialYOffset,
          left: initialXOffset,
          child: IconButton(
            icon: Icon(
              _isExpanded ? Icons.close : Icons.menu,
              color: navbarVariables.primaryColor,
            ),
            onPressed: _startAnimation,
          ),
        ),
        if (_showFirstButton)
          AnimatedBuilder(
            animation: _firstAnimation,
            builder: (context, child) {
              return Positioned(
                top: initialYOffset,
                left: initialXOffset + _firstAnimation.value,
                child: Tooltip(
                  message: 'Home',
                  child: IconButton(
                    icon: Icon(
                      Icons.home_outlined,
                      color: navbarVariables.primaryColor,
                    ),
                    onPressed: () {
                      navbarVariables.scrollController.animateTo(
                        0,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ),
              );
            },
          ),
        if (_showSecondButton)
          AnimatedBuilder(
            animation: _secondAnimation,
            builder: (context, child) {
              return Positioned(
                top: initialYOffset,
                left: initialXOffset + _secondAnimation.value,
                child: Tooltip(
                  message: 'About me',
                  child: IconButton(
                    icon: Icon(
                      Icons.person_outline,
                      color: navbarVariables.primaryColor,
                    ),
                    onPressed: () {
                      navbarVariables.scrollController.animateTo(
                        MediaQuery.of(context).size.height * 2,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ),
              );
            },
          ),
        if (_showThirdButton)
          AnimatedBuilder(
            animation: _thirdAnimation,
            builder: (context, child) {
              return Positioned(
                top: initialYOffset,
                left: initialXOffset + _thirdAnimation.value,
                child: Tooltip(
                  message: 'Projects',
                  child: IconButton(
                    icon: Icon(
                      Icons.web,
                      color: navbarVariables.primaryColor,
                    ),
                    onPressed: () {
                      navbarVariables.scrollController.animateTo(
                        MediaQuery.of(context).size.height,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ),
              );
            },
          ),
        if (_showFourthButton)
          AnimatedBuilder(
            animation: _fourthAnimation,
            builder: (context, child) {
              return Positioned(
                top: initialYOffset,
                left: initialXOffset + _fourthAnimation.value,
                child: Tooltip(
                  message: 'Contact me',
                  child: IconButton(
                    icon: Icon(
                      Icons.email_outlined,
                      color: navbarVariables.primaryColor,
                    ),
                    onPressed: () {
                      navbarVariables.scrollController.animateTo(
                        MediaQuery.of(context).size.height * 2,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                  ),
                ),
              );
            },
          ),

        Positioned(
          top: 10,
          right: 10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/images/Logo.jpeg',
              height: 40,
            ),
          ),
        ),
      ],
    );
  }
}
