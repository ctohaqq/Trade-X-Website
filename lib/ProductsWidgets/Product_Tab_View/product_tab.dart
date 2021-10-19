import 'package:flutter/material.dart';
import 'package:tradex/ProductsWidgets/Product_Tab_View/product_navbar_tab.dart';

class ProductTab extends StatefulWidget {
  const ProductTab({Key? key}) : super(key: key);

  @override
  _ProductTabState createState() => _ProductTabState();
}

class _ProductTabState extends State<ProductTab> {
  @override
  Widget build(BuildContext context) {
    return const ProductNavbarTab();
  }
}
