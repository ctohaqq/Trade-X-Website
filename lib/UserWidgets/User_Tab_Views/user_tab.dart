import 'package:flutter/material.dart';
import 'package:tradex/HomeWidgets/Footer/footer.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Tab_Views/influencer_header_tab.dart';
import 'package:tradex/UserWidgets/User_Desktop_Views/user_navbar_tab.dart';
import 'package:tradex/UserWidgets/User_Tab_Views/user_bar_tab.dart';
import 'package:tradex/UserWidgets/User_Tab_Views/user_body_one_tab.dart';

class UserTab extends StatefulWidget {
  const UserTab({Key? key}) : super(key: key);

  @override
  _UserTabState createState() => _UserTabState();
}

class _UserTabState extends State<UserTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        UserBarTab(),
      ],
    );
  }
}
