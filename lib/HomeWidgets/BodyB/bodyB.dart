// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tradex/HomeWidgets/BodyB/bodyB_Desktop.dart';
import 'package:tradex/HomeWidgets/BodyB/bodyB_mobile.dart';
import 'package:tradex/HomeWidgets/BodyB/bodyB_tablet.dart';

class BodyTwo extends StatefulWidget {
  const BodyTwo({Key? key}) : super(key: key);

  @override
  _BodyTwoState createState() => _BodyTwoState();
}

class _BodyTwoState extends State<BodyTwo> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const BodyBMobile(),
      tablet: const BodyTwoTablet(),
      desktop: const BodyTwoDesktop(),
    );
  }
}
