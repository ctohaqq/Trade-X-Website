import 'package:flutter/material.dart';
import 'package:tradex/HomeWidgets/Footer/footer.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Desktop_views/influencer_header_desktop.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Desktop_views/influencer_navbar_desktop.dart';
import 'package:tradex/UserWidgets/User_Desktop_Views/user_body_one.dart';

class UserDesktop extends StatefulWidget {
  const UserDesktop({Key? key}) : super(key: key);

  @override
  _UserDesktopState createState() => _UserDesktopState();
}

class _UserDesktopState extends State<UserDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      InfluencerNavbarDesktop(),
      InfluencerHeaderDesktop(),
      UserBodyOne(),
      Footer(),
    ]);
  }
}
