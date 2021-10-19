import 'package:flutter/material.dart';
import 'package:tradex/HomeWidgets/NavBar/appBar_mobile.dart';
import 'package:tradex/HomeWidgets/NavBar/appBar_tab.dart';
import 'package:tradex/HomeWidgets/body_desktop.dart';
import 'package:tradex/helpers/responsive.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: BodyDesktop(),
      mediumScreen: AppBarTab(),
      smallScreen: AppBarMobile(),
    );
  }
}
