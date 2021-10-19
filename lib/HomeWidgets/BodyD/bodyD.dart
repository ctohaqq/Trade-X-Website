// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tradex/HomeWidgets/BodyD/bodyD_desktop.dart';
import 'package:tradex/HomeWidgets/BodyD/bodyD_mobile.dart';
import 'package:tradex/HomeWidgets/BodyD/bodyD_tablet.dart';

class BodyFour extends StatefulWidget {
  const BodyFour({Key? key}) : super(key: key);

  @override
  _BodyFourState createState() => _BodyFourState();
}

class _BodyFourState extends State<BodyFour> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const BodyFourMobile(),
      tablet: const BodyFourTablet(),
      desktop: const BodyFourDesktop(),
    );
  }
}
