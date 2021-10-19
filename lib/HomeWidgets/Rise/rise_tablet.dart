import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tradex/constants/colors.dart';

class RiseTablet extends StatefulWidget {
  const RiseTablet({Key? key}) : super(key: key);

  @override
  _RiseTabletState createState() => _RiseTabletState();
}

class _RiseTabletState extends State<RiseTablet> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: HexColor('#131212'),
        height: 600,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Image.asset(
                'assets/images/rise.png',
                width: 500,
              ),
            ),
            Container(
              height: 50,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: EdgeInsets.only(left: 150.0),
                child: Text(
                  'About 60% of our consumption',
                  style: TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: EdgeInsets.only(left: 150.0),
                child: Text(
                  'is over the internet',
                  style: TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 150.0),
                child: Text(
                  'A large percentage of our consumption is over the internet.',
                  style: TextStyle(
                    color: HexColor('#979798'),
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 150.0),
                child: Text(
                  'Our consumption is not limited to buying products and',
                  style: TextStyle(
                    color: HexColor('#979798'),
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 150.0),
                child: Text(
                  'using services but also contributing to causes, being clients to',
                  style: TextStyle(
                    color: HexColor('#979798'),
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 150.0),
                child: Text(
                  'freelancers and so much more',
                  style: TextStyle(
                    color: HexColor('#979798'),
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 150.0),
                child: Text(
                  'Bussinesses are changing the ways they offer products and',
                  style: TextStyle(
                    color: HexColor('#979798'),
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 150.0),
                child: Text(
                  'services to match out dynamic and unique consumption patterns.',
                  style: TextStyle(
                    color: HexColor('#979798'),
                    fontSize: 15,
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
