// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tradex/HomeWidgets/BodyG/bodyF_tablet.dart';
import 'package:tradex/HomeWidgets/BodyG/bodyG_mobile.dart';

class BodySeven extends StatefulWidget {
  const BodySeven({Key? key}) : super(key: key);

  @override
  _BodySevenState createState() => _BodySevenState();
}

class _BodySevenState extends State<BodySeven> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const BodySevenMobile(),
      tablet: const BodySevenTablet(),
    );
  }
}
