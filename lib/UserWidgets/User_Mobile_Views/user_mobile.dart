import 'package:flutter/material.dart';
import 'package:tradex/UserWidgets/User_Mobile_Views/user_navbar_mobile.dart';

class UserMobile extends StatefulWidget {
  const UserMobile({Key? key}) : super(key: key);

  @override
  _UserMobileState createState() => _UserMobileState();
}

class _UserMobileState extends State<UserMobile> {
  @override
  Widget build(BuildContext context) {
    return const UserNavbarMobile();
  }
}
