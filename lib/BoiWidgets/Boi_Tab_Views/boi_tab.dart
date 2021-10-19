import 'package:flutter/material.dart';
import 'package:tradex/BoiWidgets/Boi_Tab_Views/boi_navbra_tab.dart';

class BoiTab extends StatefulWidget {
  const BoiTab({Key? key}) : super(key: key);

  @override
  _BoiTabState createState() => _BoiTabState();
}

class _BoiTabState extends State<BoiTab> {
  @override
  Widget build(BuildContext context) {
    return const BoiNavbraTab();
  }
}
