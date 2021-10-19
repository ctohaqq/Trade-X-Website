import 'package:flutter/material.dart';
import 'package:tradex/BoiWidgets/Boi_Desktop_Views/boi_body_desktop.dart';
import 'package:tradex/HomeWidgets/Footer/footer.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Desktop_views/influencer_header_desktop.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Desktop_views/influencer_navbar_desktop.dart';

class BoiDesktop extends StatefulWidget {
  const BoiDesktop({Key? key}) : super(key: key);

  @override
  _BoiDesktopState createState() => _BoiDesktopState();
}

class _BoiDesktopState extends State<BoiDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InfluencerNavbarDesktop(),
        InfluencerHeaderDesktop(),
        BoiBodyDesktop(),
        Footer(),
      ],
    );
  }
}
