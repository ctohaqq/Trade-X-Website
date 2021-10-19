// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:tradex/HomeWidgets/Footer/footer_mobile.dart';
import 'package:tradex/ProductsWidgets/Product_Mobile_Views/product_body_one_mobile.dart';
import 'package:tradex/ProductsWidgets/Product_Mobile_Views/product_body_three_mobile.dart';
import 'package:tradex/ProductsWidgets/Product_Mobile_Views/product_body_two_mobile.dart';
import 'package:tradex/ProductsWidgets/Product_Mobile_Views/product_header_mobile.dart';
import 'package:tradex/Routes/routes.dart';
import 'package:tradex/constants/colors.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class ProductNavBarMobile extends StatefulWidget {
  const ProductNavBarMobile({Key? key}) : super(key: key);

  @override
  _ProductNavBarMobileState createState() => _ProductNavBarMobileState();
}

class _ProductNavBarMobileState extends State<ProductNavBarMobile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 1820,
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
                //   onTap: () {
                //     context.vxNav.push(Uri.parse(MyRoutes.serviceRoute));
                //   },
                // ),
                const SizedBox(height: 20),
                InkWell(
                  child: Text(
                    'OUR PRODUCTS/SERVICES',
                    style: TextStyle(color: goldIsh),
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
          body: Column(
            children: const [
              ProductHeaderMobile(),
              ProductBodyOneMobile(),
              ProductBodyTwoMobile(),
              ProductBodyThreeMobile(),
              FooterMobile(),
            ],
          ),
        ));
  }
}
