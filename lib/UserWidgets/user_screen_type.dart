import 'package:flutter/material.dart';
import 'package:tradex/UserWidgets/User_Desktop_Views/user_desktop.dart';
import 'package:tradex/UserWidgets/User_Mobile_Views/user_mobile.dart';
import 'package:tradex/UserWidgets/User_Tab_Views/user_tab.dart';
import 'package:tradex/helpers/responsive.dart';

class UserScreenType extends StatefulWidget {
  const UserScreenType({Key? key}) : super(key: key);

  @override
  _UserScreenTypeState createState() => _UserScreenTypeState();
}

class _UserScreenTypeState extends State<UserScreenType> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: UserDesktop(),
      mediumScreen: UserTab(),
      smallScreen: UserMobile(),
    );
  }
}
