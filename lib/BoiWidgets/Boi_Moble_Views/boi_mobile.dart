import 'package:flutter/material.dart';
import 'package:tradex/BoiWidgets/Boi_Moble_Views/boi_navbar_mobile.dart';

class BoiMobile extends StatefulWidget {
  const BoiMobile({Key? key}) : super(key: key);

  @override
  _BoiMobileState createState() => _BoiMobileState();
}

class _BoiMobileState extends State<BoiMobile> {
  @override
  Widget build(BuildContext context) {
    return const BoiNavbarMobile();
  }
}
