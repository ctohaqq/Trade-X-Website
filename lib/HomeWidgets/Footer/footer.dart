import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tradex/HomeWidgets/Footer/footer_mobile.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const FooterMobile(),
      tablet: const FooterMobile(),
      desktop: const FooterMobile(),
    );
  }
}
