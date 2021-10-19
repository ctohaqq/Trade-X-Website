// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tradex/HomeWidgets/BodyC/bodyC_desktop.dart';
import 'package:tradex/HomeWidgets/BodyC/bodyC_mobile.dart';
import 'package:tradex/HomeWidgets/BodyC/bodyC_tablet.dart';

class BodyThree extends StatefulWidget {
  const BodyThree({Key? key}) : super(key: key);

  @override
  _BodyThreeState createState() => _BodyThreeState();
}

class _BodyThreeState extends State<BodyThree> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const BodyThreeMobile(),
      tablet: const BodyThreeTablet(),
      desktop: const BodyThreeLaptop(),
    );
  }
}
