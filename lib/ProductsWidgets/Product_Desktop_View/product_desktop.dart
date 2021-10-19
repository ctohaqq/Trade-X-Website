import 'package:flutter/material.dart';
import 'package:tradex/ProductsWidgets/Product_Desktop_View/product_header_desktop.dart';

class ProductDesktop extends StatefulWidget {
  const ProductDesktop({Key? key}) : super(key: key);

  @override
  _ProductDesktopState createState() => _ProductDesktopState();
}

class _ProductDesktopState extends State<ProductDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ProductHeaderDesktop(),
      ],
    );
  }
}
