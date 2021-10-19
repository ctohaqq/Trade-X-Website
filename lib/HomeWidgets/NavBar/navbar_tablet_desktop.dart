import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tradex/HomeWidgets/NavBar/nav_logo.dart';
import 'package:tradex/HomeWidgets/NavBar/navbar_item.dart';
import 'package:tradex/Pages/investor_page.dart';

class NavBarDesktop extends StatefulWidget {
  const NavBarDesktop({Key? key}) : super(key: key);

  @override
  _NavbraDesktopState createState() => _NavbraDesktopState();
}

class _NavbraDesktopState extends State<NavBarDesktop> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: HexColor("#000000"),
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 65.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const NavBarLogo(),
            Padding(
              padding: const EdgeInsets.only(right: 80.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    child: const NavBarItem(
                      'OUR OPPORTUNITY',
                    ),
                    onTap: () {},
                  ),
                  const SizedBox(width: 40),
                  InkWell(
                    child: const NavBarItem('SERVICES'),
                    onTap: () {},
                  ),
                  const SizedBox(width: 40),
                  InkWell(
                    child: const NavBarItem('PRODUCTS'),
                    onTap: () {},
                  ),
                  const SizedBox(width: 40),
                  InkWell(
                    child: const NavBarItem('INVESTORS'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const InvestorPage()));
                    },
                  ),
                  const Icon(
                    Icons.expand_more,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 40),
                  InkWell(
                    child: const NavBarItem('WAITLIST'),
                    onTap: () {},
                  ),
                  const Icon(
                    Icons.expand_more,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 40),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
