import 'package:flutter/material.dart';
import 'package:tradex/InvestorWidgets/InvestorDesktop/inv_body.dart';
import 'package:tradex/InvestorWidgets/InvestorDesktop/inv_desktop_navbar.dart';

class InvestorDesktop extends StatefulWidget {
  const InvestorDesktop({Key? key}) : super(key: key);

  @override
  _InvestorDesktopState createState() => _InvestorDesktopState();
}

class _InvestorDesktopState extends State<InvestorDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      InvestorNavBarDesktop(),
      InvestorBodyDesktop(),
    ]);
  }
}
