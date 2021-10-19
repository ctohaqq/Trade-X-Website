import 'package:flutter/material.dart';
import 'package:tradex/BoiWidgets/Boi_Desktop_Views/boi_desktop.dart';
import 'package:tradex/BoiWidgets/Boi_Moble_Views/boi_mobile.dart';
import 'package:tradex/BoiWidgets/Boi_Tab_Views/boi_tab.dart';
import 'package:tradex/helpers/responsive.dart';

class BoiScreenType extends StatefulWidget {
  const BoiScreenType({Key? key}) : super(key: key);

  @override
  _BoiScreenTypeState createState() => _BoiScreenTypeState();
}

class _BoiScreenTypeState extends State<BoiScreenType> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: BoiDesktop(),
      mediumScreen: BoiTab(),
      smallScreen: BoiMobile(),
    );
  }
}
