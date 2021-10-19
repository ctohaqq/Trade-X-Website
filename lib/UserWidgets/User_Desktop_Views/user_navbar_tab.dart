import 'package:flutter/material.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Desktop_views/influencer_navbar_desktop.dart';
import 'package:tradex/UserWidgets/User_Tab_Views/user_bar_tab.dart';

class UserNavbarTab extends StatefulWidget {
  const UserNavbarTab({Key? key}) : super(key: key);

  @override
  _UserNavbarTabState createState() => _UserNavbarTabState();
}

class _UserNavbarTabState extends State<UserNavbarTab> {
  @override
  Widget build(BuildContext context) {
    return const UserBarTab();
  }
}
