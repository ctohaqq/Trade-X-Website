import 'package:flutter/material.dart';
// import 'package:tradex/InfluencerWidgets/influencer_screen/influencer_header_tab.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Tab_Views/influencer_navbar_tab.dart';

class InfluencerTab extends StatefulWidget {
  const InfluencerTab({Key? key}) : super(key: key);

  @override
  _InfluencerTabState createState() => _InfluencerTabState();
}

class _InfluencerTabState extends State<InfluencerTab> {
  @override
  Widget build(BuildContext context) {
    return const InfluencerNavbarTab();
  }
}
