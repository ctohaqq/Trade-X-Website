import 'package:flutter/material.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Desktop_views/influencer_desktop.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Mobile_Views/influencer_mobile.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Tab_Views/influencer_tab.dart';
import 'package:tradex/helpers/responsive.dart';

class InfluencerScreenType extends StatefulWidget {
  const InfluencerScreenType({Key? key}) : super(key: key);

  @override
  _InfluencerScreenTypeState createState() => _InfluencerScreenTypeState();
}

class _InfluencerScreenTypeState extends State<InfluencerScreenType> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: InfluencerDesktop(),
      mediumScreen: InfluencerTab(),
      smallScreen: InfluencerMobile(),
    );
  }
}
