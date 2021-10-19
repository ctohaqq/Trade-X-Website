import 'package:flutter/material.dart';
import 'package:tradex/BrandsWidgets/Brands_Desktop_Views/brands_desktop.dart';
import 'package:tradex/BrandsWidgets/Brands_Mobile_Views/brands_mobile.dart';
import 'package:tradex/BrandsWidgets/Brands_Tab_Views/brands_tab.dart';
import 'package:tradex/helpers/responsive.dart';

class BrandScreenType extends StatefulWidget {
  const BrandScreenType({Key? key}) : super(key: key);

  @override
  _BrandScreenTypeState createState() => _BrandScreenTypeState();
}

class _BrandScreenTypeState extends State<BrandScreenType> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: BrandsDesktop(),
      mediumScreen: BrandsTab(),
      smallScreen: BrandsMobile(),
    );
  }
}
