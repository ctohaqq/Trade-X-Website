import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tradex/NavDrawer/navigationdrawer.dart';
import 'package:tradex/constants/colors.dart';

class NavBarMobile extends StatefulWidget {
  const NavBarMobile({Key? key}) : super(key: key);

  @override
  _NavBarMobileState createState() => _NavBarMobileState();
}

class _NavBarMobileState extends State<NavBarMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: (const IconThemeData(color: whiteColor)),
        backgroundColor: Colors.black,
        elevation: 0.0,
        actions: [
          SizedBox(
            height: 80,
            width: 105,
            child: Image.asset('assets/images/logo.png'),
          ),
        ],
      ),
    );
  }
}


//  Padding(
//               padding: const EdgeInsets.only(right: 8.0),
//               child: SizedBox(
//                 height: 80,
//                 width: 105,
//                 child: Image.asset('assets/images/logo.png'),
//               ),
//             ),