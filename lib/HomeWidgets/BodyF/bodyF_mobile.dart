// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tradex/constants/colors.dart';

class BodySixMobile extends StatefulWidget {
  const BodySixMobile({Key? key}) : super(key: key);

  @override
  _BodySixMobileState createState() => _BodySixMobileState();
}

class _BodySixMobileState extends State<BodySixMobile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 655,
        color: whiteColor,
        child: Column(
          children: [
            Center(
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 100.0),
                    child: Text(
                      'We are in every',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'community, city, town and country',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.0),
                    child: Image(
                      image: AssetImage(
                        'assets/images/map.png',
                      ),
                      width: 800,
                      height: 350,
                    ),
                  ),
                  Text(
                    'We are the future',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'join us as we put Gen-Z',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
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
