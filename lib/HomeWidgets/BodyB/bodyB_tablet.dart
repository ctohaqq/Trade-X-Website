// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tradex/constants/colors.dart';

class BodyTwoTablet extends StatefulWidget {
  const BodyTwoTablet({Key? key}) : super(key: key);

  @override
  _BodyTwoState createState() => _BodyTwoState();
}

class _BodyTwoState extends State<BodyTwoTablet> {
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
                  '40% OF THE GLOBAL',
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
                  'CONSUMER POPULATION',
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
                  'A very low consumer class',
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
                child: Text(
                  'We have an indirect spending power of \$$val Billion',
                  style: const TextStyle(
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
                  'We will be entering the workforce and would spend even more',
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
                  'We are the next generation of consumers',
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
                  'Our influence is unmateched',
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
