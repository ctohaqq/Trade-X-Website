import 'package:flutter/material.dart';
import 'package:tradex/HomeWidgets/NavBar/navbar_item.dart';
import 'package:tradex/Pages/investor_page.dart';
import 'package:tradex/constants/colors.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
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
            child: Text('INVESTORS', style: TextStyle(color: goldIsh)),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InvestorPage()));
            },
          ),
          Icon(
            Icons.expand_more,
            color: goldIsh,
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
          InkWell(
            child: const NavBarItem('CONTACT'),
            onTap: () {},
          ),
          const Icon(
            Icons.expand_more,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
