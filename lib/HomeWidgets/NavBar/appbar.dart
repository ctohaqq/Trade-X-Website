// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tradex/HomeWidgets/NavBar/nav_logo.dart';
import 'package:tradex/HomeWidgets/NavBar/navbar_item.dart';
import 'package:tradex/Routes/routes.dart';
import 'package:tradex/constants/colors.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class AppBarDesktop extends StatefulWidget {
  const AppBarDesktop({Key? key}) : super(key: key);

  @override
  _AppBarDesktoptate createState() => _AppBarDesktoptate();
}

class _AppBarDesktoptate extends State<AppBarDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor("#000000"),
      // height: 80,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 65.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const NavBarLogo(),
          Padding(
            padding: const EdgeInsets.only(right: 80.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  child: Text(
                    'OUR OPPORTUNITY',
                    style: TextStyle(color: goldIsh),
                  ),
                  onTap: () {
                    context.vxNav.push(Uri.parse(MyRoutes.homeRoute));
                  },
                ),
                const SizedBox(width: 40),
                InkWell(
                  child: const NavBarItem('OUR PRODUCT/SERVICES'),
                  onTap: () {
                    context.vxNav.push(Uri.parse(MyRoutes.serviceRoute));
                  },
                ),
                const SizedBox(width: 40),
                InkWell(
                  child: const NavBarItem('INVESTORS'),
                  onTap: () {
                    context.vxNav.push(Uri.parse(MyRoutes.investorRoute));
                  },
                ),
                const Icon(
                  Icons.expand_more,
                  color: Colors.white,
                ),
                const SizedBox(width: 40),
                InkWell(
                  child: const NavBarItem('WAITLIST'),
                  onTap: () {
                    context.vxNav.push(Uri.parse(MyRoutes.influencerRoute));
                  },
                ),
                const Icon(
                  Icons.expand_more,
                  color: Colors.white,
                ),
                const SizedBox(width: 40),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
