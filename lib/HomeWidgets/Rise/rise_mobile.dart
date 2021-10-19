import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tradex/constants/colors.dart';

class RiseMobile extends StatefulWidget {
  const RiseMobile({Key? key}) : super(key: key);

  @override
  _RiseMobileState createState() => _RiseMobileState();
}

class _RiseMobileState extends State<RiseMobile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: HexColor('#131212'),
        height: 500,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Image.asset(
                'assets/images/rise.png',
              ),
            ),
            Container(
              height: 50,
            ),
            const Center(
              child: Text(
                'About 60% of our consumption',
                style: TextStyle(
                  color: whiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const Center(
              child: Text(
                'is over the internet',
                style: TextStyle(
                  color: whiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'A large percentage of our consumption is over the internet.',
                style: TextStyle(
                  color: HexColor('#979798'),
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Our consumption is not limited to buying products and',
                style: TextStyle(
                  color: HexColor('#979798'),
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'using services but also contributing to causes, being clients to',
                style: TextStyle(
                  color: HexColor('#979798'),
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'freelancers and so much more',
                style: TextStyle(
                  color: HexColor('#979798'),
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Bussinesses are changing the ways they offer products and',
                style: TextStyle(
                  color: HexColor('#979798'),
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'services to match out dynamic and unique consumption patterns.',
                style: TextStyle(
                  color: HexColor('#979798'),
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
