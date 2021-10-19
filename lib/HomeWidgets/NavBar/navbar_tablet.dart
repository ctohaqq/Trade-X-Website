import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tradex/constants/colors.dart';

class NavBarTablet extends StatefulWidget {
  const NavBarTablet({Key? key}) : super(key: key);

  @override
  _NavBartabletState createState() => _NavBartabletState();
}

class _NavBartabletState extends State<NavBarTablet> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 80,
        color: HexColor("#000000"),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: whiteColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: SizedBox(
                height: 80,
                width: 105,
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
