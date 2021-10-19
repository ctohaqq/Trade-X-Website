import 'package:flutter/material.dart';
import 'package:tradex/BrandsWidgets/Brands_Tab_Views/brand_body_tab.dart';
import 'package:tradex/BrandsWidgets/Brands_Tab_Views/brand_navbar_tab.dart';

class BrandsTab extends StatefulWidget {
  const BrandsTab({Key? key}) : super(key: key);

  @override
  _BrandsTabState createState() => _BrandsTabState();
}

class _BrandsTabState extends State<BrandsTab> {
  @override
  Widget build(BuildContext context) {
    return const BrandNavbarTab();
  }
}
