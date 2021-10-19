// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tradex/HomeWidgets/BodyA/bodyA_mobile.dart';
import 'package:tradex/HomeWidgets/BodyA/bodyA_tablet.dart';

class BodyOne extends StatefulWidget {
  const BodyOne({Key? key}) : super(key: key);

  @override
  _BodyOneState createState() => _BodyOneState();
}

class _BodyOneState extends State<BodyOne> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const BodyOneMobile(),
      tablet: const BodyOneTablet(),
    );
  }
}
