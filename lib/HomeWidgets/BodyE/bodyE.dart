// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tradex/HomeWidgets/BodyE/bodyE_desktop.dart';
import 'package:tradex/HomeWidgets/BodyE/bodyE_mobile.dart';
import 'package:tradex/HomeWidgets/BodyE/bodyE_tablets.dart';

class BodyFIve extends StatefulWidget {
  const BodyFIve({Key? key}) : super(key: key);

  @override
  _BodyFIveState createState() => _BodyFIveState();
}

class _BodyFIveState extends State<BodyFIve> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const BodyFiveMobile(),
      tablet: const BodyFiveTablet(),
      desktop: const BodyFiveDesktop(),
    );
  }
}
