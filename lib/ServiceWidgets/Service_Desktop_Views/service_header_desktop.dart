import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tradex/constants/colors.dart';

class ServeHeaderDesktop extends StatefulWidget {
  const ServeHeaderDesktop({Key? key}) : super(key: key);

  @override
  _ServeHeaderDesktopState createState() => _ServeHeaderDesktopState();
}

class _ServeHeaderDesktopState extends State<ServeHeaderDesktop> {
  final TextEditingController _emailText = TextEditingController();
  String emailValue = '';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            color: HexColor('#131212'),
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 110.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
