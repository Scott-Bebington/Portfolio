// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myportfolio/Contact/ContactMe.dart';
import 'package:myportfolio/GlobalVariables.dart';

class TabletServices extends StatefulWidget {
  const TabletServices({super.key});

  @override
  State<TabletServices> createState() => _TabletServicesState();
}

class _TabletServicesState extends State<TabletServices> with SingleTickerProviderStateMixin {
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
      padding: EdgeInsets.only(top: 75, left: 50, right: 50, bottom: 50),
      child: Column(
        children: [
          Text(
            'Why SB Developmment?',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: tabletVariables.HeadingTextSize, fontWeight: FontWeight.bold, color: primaryColor),
          ),
          Text(
            "Websites built with generic web builders often lack the personal touch, resulting in a bland, cookie-cutter feel that fails to capture your unique brand identity and truly engage your audience."
            " I build websites from scratch, tailoring every aspect to your specific needs and brand identity. This ensures that your website is as unique as your brand.",
            style: TextStyle(
              fontSize: tabletVariables.BodyTextSize,
              color: tertiaryColor,
            ),
          ),
          SizedBox(height: 20),
          Text("Services i offer", style: TextStyle(fontSize: tabletVariables.SubHeadingTextSize, fontWeight: FontWeight.bold, color: primaryColor)),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: [
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
            ],
          )
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
    return Container(
      width: 260,
      height: 300, // Adjusted height based on expansion state
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
            child: Padding(
              padding: const EdgeInsets.only(top: 90, left: 20, right: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 220,
                    child: Row(
                      children: [
                        Icon(
                          widget.designIncluded ? Icons.check_circle : Icons.cancel,
                          color: widget.designIncluded ? widget.headingColor : Colors.grey,
                        ),
                        SizedBox(width: 20),
                        Text("Custom Design", style: TextStyle(fontSize: tabletVariables.cardBodyTextSize, color: Colors.grey)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 220,
                    child: Row(
                      children: [
                        Icon(
                          widget.webCreationIncluded ? Icons.check_circle : Icons.cancel,
                          color: widget.webCreationIncluded ? widget.headingColor : Colors.grey,
                        ),
                        SizedBox(width: 20),
                        Text("Website Creation", style: TextStyle(fontSize: tabletVariables.cardBodyTextSize, color: Colors.grey)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 220,
                    child: Row(
                      children: [
                        Icon(
                          widget.dbIncluded ? Icons.check_circle : Icons.cancel,
                          color: widget.dbIncluded ? widget.headingColor : Colors.grey,
                        ),
                        SizedBox(width: 20),
                        Text("Database Services", style: TextStyle(fontSize: tabletVariables.cardBodyTextSize, color: Colors.grey)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 220,
                    child: Row(
                      children: [
                        Icon(
                          widget.paymentIncluded ? Icons.check_circle : Icons.cancel,
                          color: widget.paymentIncluded ? widget.headingColor : Colors.grey,
                        ),
                        SizedBox(width: 20),
                        Text("Payment Services", style: TextStyle(fontSize: tabletVariables.cardBodyTextSize, color: Colors.grey)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        ContactVariables.subjectController.text = "Hi, id like to enquire about the ${widget.cardName} package.";
                        navbarVariables.scrollToSection(navbarVariables.contactKey);
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(widget.headingColor),
                      ),
                      child: Text(
                        'Enquire Now',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: AnimatedContainer(
              padding: EdgeInsets.only(bottom: 5, left: 30, right: 30),
              duration: Duration(milliseconds: 300),
              height: cardExpanded ? 300 : 80,
              width: 300,
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
                        fontSize: tabletVariables.cardHeadingTextSize,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: cardExpanded,
                    child: Text(
                      widget.cardDescription,
                      style: TextStyle(
                        fontSize: tabletVariables.cardBodyTextSize,
                        color: Colors.white,
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
                            fontSize: tabletVariables.cardBodyTextSize,
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
            ),
          ),
        ],
      ),
    );
  }
}
