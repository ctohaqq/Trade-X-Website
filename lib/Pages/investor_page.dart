import 'package:flutter/material.dart';
import 'package:tradex/InvestorWidgets/AppBarInvestor/appBar_in_tab.dart';
import 'package:tradex/InvestorWidgets/InvestorMobile/investor_mobile.dart';
import 'package:tradex/InvestorWidgets/InvestorDesktop/investors_desktop.dart';
import 'package:tradex/helpers/responsive.dart';

class InvestorPage extends StatefulWidget {
  const InvestorPage({Key? key}) : super(key: key);

  @override
  _InvestorPageState createState() => _InvestorPageState();
}

class _InvestorPageState extends State<InvestorPage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: InvestorDesktop(),
      mediumScreen: InvestorAppBarTab(),
      smallScreen: InvestorMobile(),
    );
  }
}
