import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tradex/HomeWidgets/HomePageHeader/home_page_header_mobile.dart';
import 'package:tradex/HomeWidgets/HomePageHeader/home_page_header_tablet.dart';

class HomePageHeader extends StatefulWidget {
  const HomePageHeader({Key? key}) : super(key: key);

  @override
  _HomePageHeaderState createState() => _HomePageHeaderState();
}

class _HomePageHeaderState extends State<HomePageHeader> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const HomePageHeaderMobile(),
      tablet: const HomePageHeaderTablet(),
    );
  }
}
 


 // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage('assets/images/circle.png'),
            //   ),
            // ),
