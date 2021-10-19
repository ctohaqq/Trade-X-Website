// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tradex/constants/colors.dart';

class BodyFiveDesktop extends StatefulWidget {
  const BodyFiveDesktop({Key? key}) : super(key: key);

  @override
  _BodyFiveDesktopState createState() => _BodyFiveDesktopState();
}

class _BodyFiveDesktopState extends State<BodyFiveDesktop> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 420,
        color: Colors.black,
        child: Column(
          children: [
            Center(
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 100.0),
                    child: Text(
                      'We spend from Products to Services to',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Freelancing Services.',
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Text(
                      'Our spending power is unmatched and demands attention',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 20,
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
