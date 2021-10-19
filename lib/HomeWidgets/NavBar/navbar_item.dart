import 'package:flutter/material.dart';
import 'package:tradex/constants/colors.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  const NavBarItem(
    this.title, {
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle(fontSize: 13, color: whiteColor));
  }
}
