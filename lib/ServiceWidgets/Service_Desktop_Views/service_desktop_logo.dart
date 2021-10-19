import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tradex/constants/colors.dart';

class ServiceDesktopLogo extends StatefulWidget {
  const ServiceDesktopLogo({Key? key}) : super(key: key);

  @override
  _ServiceDesktopLogoState createState() => _ServiceDesktopLogoState();
}

class _ServiceDesktopLogoState extends State<ServiceDesktopLogo> {
  final TextEditingController _emailText = TextEditingController();
  String emailValue = '';

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Container(
          color: HexColor('#131212'),
          height: 450,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    // SizedBox(
                    //     // child: Image.asset(
                    //     //   'assets/images/logo.png',
                    //     //   fit: BoxFit.contain,
                    //     // ),
                    //     ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
