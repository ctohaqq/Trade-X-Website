import 'package:flutter/material.dart';
import 'package:tradex/HomeWidgets/NavBar/nav_bar.dart';
import 'package:tradex/InvestorWidgets/InvestorMobile/inv_body_mobile.dart';
import 'package:tradex/InvestorWidgets/InvestorMobile/inv_nav_mobile.dart';

class InvestorMobile extends StatefulWidget {
  const InvestorMobile({Key? key}) : super(key: key);

  @override
  _InvestorMobileState createState() => _InvestorMobileState();
}

class _InvestorMobileState extends State<InvestorMobile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          InvestorNavBarMobile(),
        ],
      ),
    );
  }
}
