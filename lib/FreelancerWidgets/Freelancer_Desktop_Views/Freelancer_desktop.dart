// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tradex/FreelancerWidgets/Freelancer_Desktop_Views/freelancer_body_one_desktop.dart';
import 'package:tradex/HomeWidgets/Footer/footer.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Desktop_views/influencer_header_desktop.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Desktop_views/influencer_navbar_desktop.dart';
import 'package:tradex/UserWidgets/User_Desktop_Views/user_navbar_tab.dart';

class FreelancerDesktop extends StatefulWidget {
  const FreelancerDesktop({Key? key}) : super(key: key);

  @override
  _FreelancerDesktopState createState() => _FreelancerDesktopState();
}

class _FreelancerDesktopState extends State<FreelancerDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      InfluencerNavbarDesktop(),
      InfluencerHeaderDesktop(),
      FreelancerBodyOneDesktop(),
      Footer(),
    ]);
  }
}
