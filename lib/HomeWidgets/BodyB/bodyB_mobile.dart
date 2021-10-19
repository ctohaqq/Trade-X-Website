// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tradex/constants/colors.dart';

class BodyBMobile extends StatefulWidget {
  const BodyBMobile({Key? key}) : super(key: key);

  @override
  _BodyBMobileState createState() => _BodyBMobileState();
}

class _BodyBMobileState extends State<BodyBMobile> {
  final int val = 6;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 450,
        color: Colors.black,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 110.0, left: 110.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'TRADE-X OPPORTUNITY',
                    style: TextStyle(color: goldIsh, fontSize: 12),
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: const Text(
                    '40% OF THE GLOBAL',
                    style: TextStyle(
                        color: whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: const Text(
                    'CONSUMER POPULATION',
                    style: TextStyle(
                        color: whiteColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: const Text(
                    'According to mckinsey and company,forbes and other recognizable sites',
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
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
                padding: const EdgeInsets.only(left: 80.0, top: 5.0),
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
                padding: const EdgeInsets.only(left: 80.0, top: 4.0),
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
                padding: const EdgeInsets.only(left: 80.0, top: 4.0),
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
                padding: const EdgeInsets.only(left: 80.0, top: 4.0),
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
                padding: const EdgeInsets.only(left: 80.0, top: 4.0),
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
      ),
    );
  }
}
