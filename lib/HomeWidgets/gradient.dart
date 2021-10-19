import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tradex/constants/colors.dart';

class GradientBar extends StatefulWidget {
  const GradientBar({Key? key}) : super(key: key);

  @override
  _GradientBarState createState() => _GradientBarState();
}

class _GradientBarState extends State<GradientBar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 30,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              HexColor('#17113E'),
              HexColor('#AB2A43'),
              HexColor('#E52626'),
              HexColor('#C4EB27'),
              HexColor('#434343'),
              whiteColor
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
