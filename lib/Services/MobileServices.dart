// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:myportfolio/Contact/ContactMe.dart';
import 'package:myportfolio/GlobalVariables.dart';

class MobileServices extends StatefulWidget {
  const MobileServices({super.key});

  @override
  State<MobileServices> createState() => _MobileServicesState();
}

class _MobileServicesState extends State<MobileServices> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _controller2;
  late AnimationController _controller3;
  bool firstCardExpanded = false;
  bool secondCardExpanded = false;
  bool thirdCardExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void toggleFirstCardExpansion() {
    setState(() {
      firstCardExpanded = !firstCardExpanded;
      secondCardExpanded = false;
      thirdCardExpanded = false;
      if (firstCardExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  void toggleSecondCardExpansion() {
    setState(() {
      firstCardExpanded = false;
      secondCardExpanded = !secondCardExpanded;
      thirdCardExpanded = false;
      if (secondCardExpanded) {
        _controller2.forward();
      } else {
        _controller2.reverse();
      }
    });
  }

  void toggleThirdCardExpansion() {
    setState(() {
      firstCardExpanded = false;
      secondCardExpanded = false;
      thirdCardExpanded = !thirdCardExpanded;
      if (thirdCardExpanded) {
        _controller3.forward();
      } else {
        _controller3.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: navbarVariables.servicesKey,
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
      padding: EdgeInsets.only(left: 20, right: 20, top: 75, bottom: 10),
      child: Column(
        children: [
          Text(
            'Why SB Development?',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: mobileVariables.HeadingTextSize, fontWeight: FontWeight.bold, color: primaryColor),
          ),
          Text(
            "Websites built with generic web builders often lack the personal touch, resulting in a bland, cookie-cutter feel that fails to capture your unique brand identity and truly engage your audience."
            " I build websites from scratch, tailoring every aspect to your specific needs and brand identity. This ensures that your website is as unique as your brand.",
            style: TextStyle(
              fontSize: mobileVariables.BodyTextSize,
              color: tertiaryColor,
            ),
          ),
          SizedBox(height: 20),
          Text("Services I offer", style: TextStyle(fontSize: mobileVariables.SubHeadingTextSize, fontWeight: FontWeight.bold, color: primaryColor)),
          SizedBox(height: 20),
          PaymentCard(
            cardName: "Economy",
            cardDescription: "Have a vision for your website but unsure where to start? Let me design and create your ideal website for you.",
            headingColor: tertiaryColor,
            designIncluded: true,
            webCreationIncluded: true,
            dbIncluded: false,
            paymentIncluded: false,
            costStart: 5000,
            costEnd: 15000,
          ),
          SizedBox(height: 20),
          PaymentCard(
            cardName: "Business",
            cardDescription: "Need a more advanced website? I'll design, create, and set up a database for your specific requirements.",
            headingColor: primaryColor,
            designIncluded: true,
            webCreationIncluded: true,
            dbIncluded: true,
            paymentIncluded: false,
            costStart: 15000,
            costEnd: 25000,
          ),
          SizedBox(height: 20),
          PaymentCard(
            cardName: "First Class",
            cardDescription: "Looking for the full package? I'll design, create a website, set up a database, and integrate payment services tailored to your needs.",
            headingColor: secondaryColor,
            designIncluded: true,
            webCreationIncluded: true,
            dbIncluded: true,
            paymentIncluded: true,
            costStart: 25000,
            costEnd: 50000,
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class PaymentCard extends StatefulWidget {
  const PaymentCard(
      {super.key,
      required this.cardName,
      required this.cardDescription,
      required this.headingColor,
      required this.designIncluded,
      required this.webCreationIncluded,
      required this.dbIncluded,
      required this.paymentIncluded,
      required this.costStart,
      required this.costEnd});

  final String cardName;
  final String cardDescription;
  final Color headingColor;
  final bool designIncluded;
  final bool webCreationIncluded;
  final bool dbIncluded;
  final bool paymentIncluded;
  final double costStart;
  final double costEnd;

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool cardExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void toggleCardExpansion() {
    setState(() {
      cardExpanded = !cardExpanded;
      if (cardExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: EdgeInsets.all(10),
      duration: Duration(milliseconds: 300),
      height: cardExpanded ? 450 : 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: widget.headingColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              widget.cardName,
              style: TextStyle(
                fontSize: mobileVariables.cardHeadingTextSize,
                color: Colors.white,
              ),
            ),
          ),
          Visibility(
            visible: cardExpanded,
            child: Text(
              widget.cardDescription,
              style: TextStyle(
                fontSize: mobileVariables.cardBodyTextSize,
                color: Colors.white,
              ),
            ),
          ),
          Visibility(
            visible: cardExpanded,
            child: Center(
              child: Text(
                "Whats included:",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: mobileVariables.cardHeadingTextSize,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Visibility(
            visible: cardExpanded,
            child: Center(
              child: Wrap(
                runSpacing: 10,
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  SizedBox(
                    width: 200,
                    child: Row(
                      children: [
                        Icon(
                          widget.webCreationIncluded ? Icons.check_circle : Icons.cancel,
                          color: Colors.white,
                        ),
                        SizedBox(width: 20),
                        Text("Custom Design", style: TextStyle(fontSize: mobileVariables.cardBodyTextSize, color: Colors.white)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Row(
                      children: [
                        Icon(
                          widget.webCreationIncluded ? Icons.check_circle : Icons.cancel,
                          color: Colors.white,
                        ),
                        SizedBox(width: 20),
                        Text("Website Creation", style: TextStyle(fontSize: mobileVariables.cardBodyTextSize, color: Colors.white)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Row(
                      children: [
                        Icon(
                          widget.dbIncluded ? Icons.check_circle : Icons.cancel,
                          color: Colors.white,
                        ),
                        SizedBox(width: 20),
                        Text("Database Services", style: TextStyle(fontSize: mobileVariables.cardBodyTextSize, color: Colors.white)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Row(
                      children: [
                        Icon(
                          widget.paymentIncluded ? Icons.check_circle : Icons.cancel,
                          color: Colors.white,
                        ),
                        SizedBox(width: 20),
                        Text("Payment Services", style: TextStyle(fontSize: mobileVariables.cardBodyTextSize, color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: cardExpanded,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cost: R${widget.costStart} - R${widget.costEnd}',
                  style: TextStyle(
                    fontSize: mobileVariables.cardBodyTextSize,
                    color: Colors.white,
                  ),
                ),
                Tooltip(
                  message: 'Please note that the cost is an only estimate and may vary based on specific requirements',
                  child: Icon(
                    Icons.info_outline,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Visibility(
            visible: cardExpanded,
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ContactVariables.subjectController.text = "Hi, id like to enquire about the ${widget.cardName} package.";
                  navbarVariables.scrollToSection(navbarVariables.contactKey);
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.white),
                ),
                child: Text(
                  'Enquire Now',
                  style: TextStyle(fontSize: 14, color: tertiaryColor),
                ),
              ),
            ),
          ),
          Center(
            child: RotationTransition(
              turns: Tween(begin: 0.0, end: 0.5).animate(_controller),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    toggleCardExpansion();
                  },
                  child: Image.asset(
                    'assets/images/dropwdownArrow.png',
                    height: 25,
                    width: 50,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
