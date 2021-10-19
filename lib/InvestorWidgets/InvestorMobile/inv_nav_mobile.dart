import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tradex/InvestorWidgets/InvestorMobile/inv_body_mobile.dart';
import 'package:tradex/NavDrawer/navigationdrawer.dart';
import 'package:tradex/Routes/routes.dart';
import 'package:tradex/constants/colors.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class InvestorNavBarMobile extends StatefulWidget {
  const InvestorNavBarMobile({Key? key}) : super(key: key);

  @override
  _InvestorNavBarMobileState createState() => _InvestorNavBarMobileState();
}

class _InvestorNavBarMobileState extends State<InvestorNavBarMobile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      width: MediaQuery.of(context).size.width,
      child: Scaffold(
          appBar: PreferredSize(
            child: AppBar(
              backgroundColor: Colors.black,
              iconTheme: const IconThemeData(color: whiteColor),
              elevation: 0,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 80,
                    width: 105,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                ),
              ],
            ),
            preferredSize: const Size.fromHeight(70),
          ),
          drawer: Drawer(
            backgroundColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(children: [
                InkWell(
                  child: const Text(
                    'OUR OPPORTUNITY',
                    style: TextStyle(color: whiteColor),
                  ),
                  onTap: () {
                    context.vxNav.push(Uri.parse(MyRoutes.homeRoute));
                  },
                ),
                const SizedBox(height: 20),
                InkWell(
                  child: const Text(
                    'SERVICES',
                    style: TextStyle(color: whiteColor),
                  ),
                  onTap: () {},
                ),
                const SizedBox(height: 20),
                InkWell(
                  child: const Text(
                    'PRODUCTS',
                    style: TextStyle(color: whiteColor),
                  ),
                  onTap: () {},
                ),
                const SizedBox(height: 20),
                InkWell(
                  child: Text(
                    'INVESTORS',
                    style: TextStyle(color: goldIsh),
                  ),
                  onTap: () {
                    context.vxNav.push(Uri.parse(MyRoutes.investorRoute));
                  },
                ),
                const SizedBox(height: 20),
                InkWell(
                  child: const Text(
                    'WAITLIST',
                    style: TextStyle(color: whiteColor),
                  ),
                  onTap: () {
                    context.vxNav.push(Uri.parse(MyRoutes.influencerRoute));
                  },
                ),
                const SizedBox(height: 20),
                InkWell(
                  child: const Text(
                    'CONTACT',
                    style: TextStyle(color: whiteColor),
                  ),
                  onTap: () {},
                ),
              ]),
            ),
          ),
          body: const InvestorBodyMobile()),
    );
  }
}
