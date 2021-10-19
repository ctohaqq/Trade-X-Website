// ignore_for_file: file_names, implementation_imports

import 'package:flutter/material.dart';
import 'package:tradex/HomeWidgets/BodyA/bodyA.dart';
import 'package:tradex/HomeWidgets/BodyB/bodyB.dart';
import 'package:tradex/HomeWidgets/BodyC/bodyC.dart';
import 'package:tradex/HomeWidgets/BodyD/bodyD.dart';
import 'package:tradex/HomeWidgets/BodyE/bodyE.dart';
import 'package:tradex/HomeWidgets/BodyF/bodyF.dart';
import 'package:tradex/HomeWidgets/BodyG/bodyG.dart';
import 'package:tradex/HomeWidgets/Footer/footer.dart';
import 'package:tradex/HomeWidgets/HomePageHeader/home_page_header_mobile.dart';
import 'package:tradex/HomeWidgets/Rise/rise.dart';
import 'package:tradex/HomeWidgets/gradient.dart';
import 'package:tradex/Pages/investor_page.dart';
import 'package:tradex/Routes/routes.dart';
import 'package:tradex/constants/colors.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class AppBarMobile extends StatefulWidget {
  const AppBarMobile({Key? key}) : super(key: key);

  @override
  _AppBarMobileState createState() => _AppBarMobileState();
}

class _AppBarMobileState extends State<AppBarMobile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 4445,
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
                child: Text(
                  'OUR OPPORTUNITY',
                  style: TextStyle(color: goldIsh),
                ),
                onTap: () {
                  context.vxNav.push(Uri.parse(MyRoutes.homeRoute));
                },
              ),
              const SizedBox(height: 20),
              InkWell(
                child: const Text(
                  'OUR PRODUCT/SERVICES',
                  style: TextStyle(color: whiteColor),
                ),
                onTap: () {},
              ),
              // const SizedBox(height: 20),
              // InkWell(
              //   child: const Text(
              //     'PRODUCTS',
              //     style: TextStyle(color: whiteColor),
              //   ),
              //   onTap: () {},
              // ),
              const SizedBox(height: 20),
              InkWell(
                child: const Text(
                  'INVESTORS',
                  style: TextStyle(color: whiteColor),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InvestorPage()));
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
            ]),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              HomePageHeaderMobile(),
              GradientBar(),
              BodyOne(),
              BodyTwo(),
              BodyThree(),
              Rise(),
              BodyFour(),
              BodyFIve(),
              BodySix(),
              BodySeven(),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
