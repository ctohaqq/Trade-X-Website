import 'package:flutter/material.dart';
import 'package:tradex/HomeWidgets/Footer/footer.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Desktop_views/influencer_desktop_body_one.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Desktop_views/influencer_header_desktop.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Desktop_views/influencer_navbar_desktop.dart';

class InfluencerDesktop extends StatefulWidget {
  const InfluencerDesktop({Key? key}) : super(key: key);

  @override
  _InfluencerDesktopState createState() => _InfluencerDesktopState();
}

class _InfluencerDesktopState extends State<InfluencerDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InfluencerNavbarDesktop(),
        InfluencerHeaderDesktop(),
        InfluencerBodyOne(),
        Footer(),
      ],
    );
  }
}
