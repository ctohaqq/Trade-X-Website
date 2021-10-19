import 'package:flutter/material.dart';
import 'package:tradex/ServiceWidgets/Service_Desktop_Views/service_desktop.dart';
import 'package:tradex/ServiceWidgets/Service_Mobile_Views/serive_mobile.dart';
import 'package:tradex/ServiceWidgets/Service_Tab_Views/service_tab.dart';
import 'package:tradex/helpers/responsive.dart';

class ServiceScreenType extends StatefulWidget {
  const ServiceScreenType({Key? key}) : super(key: key);

  @override
  _ServiceScreenTypeState createState() => _ServiceScreenTypeState();
}

class _ServiceScreenTypeState extends State<ServiceScreenType> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: ServiceDesktop(),
      mediumScreen: ServiceTab(),
      smallScreen: ServiceMobile(),
    );
  }
}
