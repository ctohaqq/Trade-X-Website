// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tradex/constants/colors.dart';

class BodyFiveMobile extends StatefulWidget {
  const BodyFiveMobile({Key? key}) : super(key: key);

  @override
  _BodyFiveMobileState createState() => _BodyFiveMobileState();
}

class _BodyFiveMobileState extends State<BodyFiveMobile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 220,
        color: Colors.black,
        child: Column(
          children: [
            Center(
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Text(
                      'We spend from Products to Services to',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Freelancing Services.',
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Text(
                      'Our spending power is unmatched and demands attention',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
