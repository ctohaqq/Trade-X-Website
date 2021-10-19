import 'package:flutter/material.dart';
import 'package:tradex/HomeWidgets/NavBar/nav_bar.dart';
import 'package:tradex/HomeWidgets/gradient.dart';
import 'package:tradex/InvestorWidgets/InvestorTab/inv_body_tab.dart';
import 'package:tradex/InvestorWidgets/InvestorTab/inv_navbar_tab.dart';

class InvestorTab extends StatefulWidget {
  const InvestorTab({Key? key}) : super(key: key);

  @override
  _InvestorTabState createState() => _InvestorTabState();
}

class _InvestorTabState extends State<InvestorTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          NavBar(),
          // InvestorBodyTab(),
        ],
      ),
    );
  }
}
