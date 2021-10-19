// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:tradex/BoiWidgets/Boi_Tab_Views/boi_body_tab.dart';
import 'package:tradex/BrandsWidgets/Brands_Tab_Views/brand_body_tab.dart';
import 'package:tradex/HomeWidgets/Footer/footer.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Tab_Views/influencer_header_tab.dart';
import 'package:tradex/Routes/routes.dart';
import 'package:tradex/constants/colors.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class BoiNavbraTab extends StatefulWidget {
  const BoiNavbraTab({Key? key}) : super(key: key);

  @override
  _BoiNavbraTabState createState() => _BoiNavbraTabState();
}

class _BoiNavbraTabState extends State<BoiNavbraTab> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1561,
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
              // const SizedBox(height: 20),
              // InkWell(
              //   child: const Text(
              //     'SERVICES',
              //     style: TextStyle(color: whiteColor),
              //   ),
              //   onTap: () {},
              // ),
              const SizedBox(height: 20),
              InkWell(
                child: const Text(
                  'OUR PRODUCTS/SERVICES',
                  style: TextStyle(color: whiteColor),
                ),
                onTap: () {
                  context.vxNav.push(Uri.parse(MyRoutes.productRoute));
                },
              ),
              const SizedBox(height: 20),
              InkWell(
                child: const Text(
                  'INVESTORS',
                  style: TextStyle(color: whiteColor),
                ),
                onTap: () {
                  context.vxNav.push(Uri.parse(MyRoutes.investorRoute));
                },
              ),
              const SizedBox(height: 20),
              InkWell(
                child: Text(
                  'WAITLIST',
                  style: TextStyle(color: goldIsh),
                ),
                onTap: () {
                  context.vxNav.push(Uri.parse(MyRoutes.influencerRoute));
                },
              ),
              const SizedBox(height: 20),
            ]),
          ),
        ),
        body: Column(
          children: const [
            InfluencerHeaderTab(),
            BoiBodyTab(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
