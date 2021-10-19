import 'package:flutter/material.dart';
import 'package:tradex/ProductsWidgets/Product_Mobile_Views/product_navbar_mobile.dart';

class ProductMobile extends StatefulWidget {
  const ProductMobile({Key? key}) : super(key: key);

  @override
  _ProductMobileState createState() => _ProductMobileState();
}

class _ProductMobileState extends State<ProductMobile> {
  @override
  Widget build(BuildContext context) {
    return const ProductNavBarMobile();
  }
}
