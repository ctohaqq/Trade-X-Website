import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tradex/HomeWidgets/Rise/rise_desktop.dart';
import 'package:tradex/HomeWidgets/Rise/rise_mobile.dart';
import 'package:tradex/HomeWidgets/Rise/rise_tablet.dart';

class Rise extends StatefulWidget {
  const Rise({Key? key}) : super(key: key);

  @override
  _RiseState createState() => _RiseState();
}

class _RiseState extends State<Rise> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const RiseMobile(),
      desktop: const RiseDesktop(),
      tablet: const RiseTablet(),
    );
  }
}
