import 'package:flutter/material.dart';
import 'package:tradex/BrandsWidgets/Brands_Desktop_Views/brand_body_desktop.dart';
import 'package:tradex/HomeWidgets/Footer/footer.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Desktop_views/influencer_header_desktop.dart';
import 'package:tradex/InfluencerWidgets/influencer_screen/Influencer_Desktop_views/influencer_navbar_desktop.dart';
import 'package:tradex/UserWidgets/User_Desktop_Views/user_navbar_tab.dart';

class BrandsDesktop extends StatefulWidget {
  const BrandsDesktop({Key? key}) : super(key: key);

  @override
  _BrandsDesktopState createState() => _BrandsDesktopState();
}

class _BrandsDesktopState extends State<BrandsDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        InfluencerNavbarDesktop(),
        InfluencerHeaderDesktop(),
        BrandBodyDesktop(),
        Footer(),
      ],
    );
  }
}
