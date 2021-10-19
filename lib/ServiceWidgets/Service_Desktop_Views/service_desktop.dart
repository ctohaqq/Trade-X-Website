import 'package:flutter/material.dart';
import 'package:tradex/HomeWidgets/Footer/footer.dart';
import 'package:tradex/ProductsWidgets/Product_Desktop_View/product_header_desktop.dart';
import 'package:tradex/ServiceWidgets/Service_Desktop_Views/service_body_one.dart';
import 'package:tradex/ServiceWidgets/Service_Desktop_Views/service_body_three.dart';
import 'package:tradex/ServiceWidgets/Service_Desktop_Views/service_body_two.dart';
import 'package:tradex/ServiceWidgets/Service_Desktop_Views/service_desktop_logo.dart';
import 'package:tradex/ServiceWidgets/Service_Desktop_Views/service_header_desktop.dart';
import 'package:tradex/ServiceWidgets/Service_Desktop_Views/service_navbar_desktop.dart';

class ServiceDesktop extends StatefulWidget {
  const ServiceDesktop({Key? key}) : super(key: key);

  @override
  _ServiceDesktopState createState() => _ServiceDesktopState();
}

class _ServiceDesktopState extends State<ServiceDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ServiceNavbarDesktop(),
        ProductHeaderDesktop(),
        ServiceBodyOne(),
        ServiceBodyTwo(),
        ServiceBodyThree(),
        Footer(),
      ],
    );
  }
}
