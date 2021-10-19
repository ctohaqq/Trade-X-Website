import 'package:flutter/material.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Mobile_Views/influencer_header_mobile.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Mobile_Views/influencer_navbar_mobile.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Tab_Views/influencer_navbar_tab.dart';

class InfluencerMobile extends StatefulWidget {
  const InfluencerMobile({Key? key}) : super(key: key);

  @override
  _InfluencerMobileState createState() => _InfluencerMobileState();
}

class _InfluencerMobileState extends State<InfluencerMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InfluencerNavbarMobile(),
      ],
    );
  }
}
