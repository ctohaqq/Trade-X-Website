import 'package:flutter/material.dart';
import 'package:tradex/HomeWidgets/NavBar/nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: NavBar(),
    );
  }
}
