// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tradex/constants/colors.dart';

class ServiceBodyTwo extends StatefulWidget {
  const ServiceBodyTwo({Key? key}) : super(key: key);

  @override
  _ServiceBodyTwoState createState() => _ServiceBodyTwoState();
}

class _ServiceBodyTwoState extends State<ServiceBodyTwo> {
  final int val = 6;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 450,
        color: Colors.black,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 110.0, left: 110.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'TRADE-X OPPORTUNITY',
                  style: TextStyle(color: goldIsh, fontSize: 15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 110.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "OUR SERVICES OFFERS SUITES OF TOOLS TO",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 110.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "ENABLE YOU OFFER YOUR SERVICES",
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 110.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'PRODUCT, CAUSES, CONTENT TO GENZES.',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 110.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'WITH ADDITONAL SERVICES AND PERCS;',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 110.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'According to mckinsey and company,forbes and other recognizable sites',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 110.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'we are: ',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120.0, top: 15.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  '. The Ability to Sell Merch Of All Types Without Services Fees.',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120.0, top: 4.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  '. The Ability To Advertise To Genzes On Our Platform.',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120.0, top: 4.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  '. The Ability To Offer Service And Product Promos To Genzes.',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120.0, top: 4.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  '. and so much more.',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
