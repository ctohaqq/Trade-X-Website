// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tradex/constants/colors.dart';

class BodySixDesktop extends StatefulWidget {
  const BodySixDesktop({Key? key}) : super(key: key);

  @override
  _BodySixDesktopState createState() => _BodySixDesktopState();
}

class _BodySixDesktopState extends State<BodySixDesktop> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 750,
        color: whiteColor,
        child: Column(
          children: [
            Center(
              child: Column(
                children: const [
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Text(
                      'We are in every',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'community, city, town and country',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
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
                      fontSize: 35,
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
