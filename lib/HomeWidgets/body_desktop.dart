import 'package:flutter/material.dart';
import 'package:tradex/HomeWidgets/BodyA/bodyA.dart';
import 'package:tradex/HomeWidgets/BodyB/bodyB.dart';
import 'package:tradex/HomeWidgets/BodyC/bodyC.dart';
import 'package:tradex/HomeWidgets/BodyD/bodyD.dart';
import 'package:tradex/HomeWidgets/BodyE/bodyE.dart';
import 'package:tradex/HomeWidgets/BodyF/bodyF.dart';
import 'package:tradex/HomeWidgets/BodyG/bodyG.dart';
import 'package:tradex/HomeWidgets/Footer/footer.dart';
import 'package:tradex/HomeWidgets/HomePageHeader/home_page_header.dart';
import 'package:tradex/HomeWidgets/NavBar/appbar.dart';
import 'package:tradex/HomeWidgets/Rise/rise.dart';
import 'package:tradex/HomeWidgets/gradient.dart';

class BodyDesktop extends StatefulWidget {
  const BodyDesktop({Key? key}) : super(key: key);

  @override
  _BodyDesktopState createState() => _BodyDesktopState();
}

class _BodyDesktopState extends State<BodyDesktop> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: const [
          AppBarDesktop(),
          HomePageHeader(),
          GradientBar(),
          BodyOne(),
          BodyTwo(),
          BodyThree(),
          Rise(),
          BodyFour(),
          BodyFIve(),
          BodySix(),
          BodySeven(),
          Footer()
        ],
      ),
    );
  }
}
