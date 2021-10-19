import 'package:flutter/material.dart';
import 'package:tradex/BrandsWidgets/Brands_Mobile_Views/brand_navbar_mobile.dart';

class BrandsMobile extends StatefulWidget {
  const BrandsMobile({Key? key}) : super(key: key);

  @override
  _BrandsMobileState createState() => _BrandsMobileState();
}

class _BrandsMobileState extends State<BrandsMobile> {
  @override
  Widget build(BuildContext context) {
    return const BrandNavbarMobile();
  }
}
