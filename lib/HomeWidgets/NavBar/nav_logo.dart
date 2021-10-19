import 'package:flutter/material.dart';

class NavBarLogo extends StatefulWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  _NavBarLogoState createState() => _NavBarLogoState();
}

class _NavBarLogoState extends State<NavBarLogo> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 105,
      child: Image.asset('assets/images/logo.png'),
    );
  }
}
