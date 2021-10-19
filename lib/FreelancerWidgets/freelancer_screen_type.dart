import 'package:flutter/material.dart';
import 'package:tradex/FreelancerWidgets/Freelancer_Desktop_Views/Freelancer_desktop.dart';
import 'package:tradex/FreelancerWidgets/Freelancer_Mobile_Views/freelancer_mobile.dart';
import 'package:tradex/FreelancerWidgets/Freelancer_Tab_Views/freelancer_tab.dart';
import 'package:tradex/helpers/responsive.dart';

class FreelancerScreenType extends StatefulWidget {
  const FreelancerScreenType({Key? key}) : super(key: key);

  @override
  _FreelancerScreenTypeState createState() => _FreelancerScreenTypeState();
}

class _FreelancerScreenTypeState extends State<FreelancerScreenType> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: FreelancerDesktop(),
      mediumScreen: FreelancerTab(),
      smallScreen: FreelancerMobile(),
    );
  }
}
