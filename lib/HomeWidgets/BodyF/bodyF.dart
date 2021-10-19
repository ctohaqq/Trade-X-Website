// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tradex/HomeWidgets/BodyF/bodyF_desktop.dart';
import 'package:tradex/HomeWidgets/BodyF/bodyF_mobile.dart';

class BodySix extends StatefulWidget {
  const BodySix({Key? key}) : super(key: key);

  @override
  _BodySixState createState() => _BodySixState();
}

class _BodySixState extends State<BodySix> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const BodySixMobile(),
      desktop: const BodySixDesktop(),
    );
  }
}
