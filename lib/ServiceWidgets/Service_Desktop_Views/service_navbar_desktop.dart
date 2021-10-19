// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tradex/HomeWidgets/NavBar/nav_logo.dart';
import 'package:tradex/HomeWidgets/NavBar/navbar_item.dart';
import 'package:tradex/Routes/routes.dart';
import 'package:tradex/constants/colors.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class ServiceNavbarDesktop extends StatefulWidget {
  const ServiceNavbarDesktop({Key? key}) : super(key: key);

  @override
  _ServiceNavbarDesktopState createState() => _ServiceNavbarDesktopState();
}

class _ServiceNavbarDesktopState extends State<ServiceNavbarDesktop> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: HexColor("#000000"),
        height: 80,
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
                    child: const NavBarItem(
                      'OUR OPPORTUNITY',
                    ),
                    onTap: () {
                      context.vxNav.push(Uri.parse(MyRoutes.homeRoute));
                    },
                  ),
                  const SizedBox(width: 40),
                  InkWell(
                    child: Text('OUR PRODUCT/SERVICES',
                        style: TextStyle(color: goldIsh)),
                    onTap: () {
                      context.vxNav.push(Uri.parse(MyRoutes.serviceRoute));
                    },
                  ),
                  // const SizedBox(width: 40),
                  // InkWell(
                  //   child: const Text('OUR PRODUCTS',
                  //       style: TextStyle(color: whiteColor)),
                  //   onTap: () {
                  //     context.vxNav.push(Uri.parse(MyRoutes.productRoute));
                  //   },
                  // ),
                  const SizedBox(width: 40),
                  InkWell(
                    child: const Text('INVESTORS',
                        style: TextStyle(color: whiteColor)),
                    onTap: () {
                      context.vxNav.push(Uri.parse(MyRoutes.investorRoute));
                    },
                  ),
                  const Icon(
                    Icons.expand_more,
                    color: whiteColor,
                  ),
                  const SizedBox(width: 40),
                  InkWell(
                    child: const Text(
                      'WAITLIST',
                      style: TextStyle(color: whiteColor),
                    ),
                    onTap: () {
                      context.vxNav.push(Uri.parse(MyRoutes.influencerRoute));
                    },
                  ),
                  const Icon(
                    Icons.expand_more,
                    color: whiteColor,
                  ),
                  const SizedBox(width: 40),
                  InkWell(
                    child: const NavBarItem('CONTACT'),
                    onTap: () {},
                  ),
                  const Icon(
                    Icons.expand_more,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
