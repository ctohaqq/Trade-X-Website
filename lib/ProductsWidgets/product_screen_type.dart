import 'package:flutter/material.dart';
import 'package:tradex/ProductsWidgets/Product_Desktop_View/product_desktop.dart';
import 'package:tradex/ProductsWidgets/Product_Mobile_Views/product_mobile.dart';
import 'package:tradex/ProductsWidgets/Product_Tab_View/product_tab.dart';
import 'package:tradex/ServiceWidgets/Service_Desktop_Views/service_desktop.dart';
import 'package:tradex/helpers/responsive.dart';

class ProductScreenType extends StatefulWidget {
  const ProductScreenType({Key? key}) : super(key: key);

  @override
  _ProductScreenTypeState createState() => _ProductScreenTypeState();
}

class _ProductScreenTypeState extends State<ProductScreenType> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: ServiceDesktop(),
      mediumScreen: ProductTab(),
      smallScreen: ProductMobile(),
    );
  }
}
