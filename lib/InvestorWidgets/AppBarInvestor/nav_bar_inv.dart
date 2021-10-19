import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tradex/HomeWidgets/NavBar/appBar_mobile.dart';
import 'package:tradex/HomeWidgets/NavBar/appBar_tab.dart';
import 'package:tradex/HomeWidgets/NavBar/appbar.dart';
import 'package:tradex/HomeWidgets/NavBar/nav_logo.dart';
import 'package:tradex/HomeWidgets/NavBar/navbar_item.dart';
import 'package:tradex/HomeWidgets/NavBar/navbar_mobile.dart';
import 'package:tradex/HomeWidgets/NavBar/navbar_tablet.dart';
import 'package:tradex/HomeWidgets/NavBar/navbar_tablet_desktop.dart';
import 'package:tradex/InvestorWidgets/AppBarInvestor/appBar_in_tab.dart';
import 'package:tradex/InvestorWidgets/InvestorMobile/inv_nav_mobile.dart';
import 'package:tradex/InvestorWidgets/InvestorTab/inv_navbar_tab.dart';
import 'package:tradex/Pages/investor_page.dart';
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
        largeScreen: AppBarDesktop(),
        mediumScreen: InvestorAppBarTab(),
        smallScreen: AppBarMobile());
  }
}
