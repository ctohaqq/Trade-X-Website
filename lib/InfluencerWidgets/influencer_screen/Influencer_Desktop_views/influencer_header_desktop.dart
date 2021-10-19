import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tradex/constants/colors.dart';

class InfluencerHeaderDesktop extends StatefulWidget {
  const InfluencerHeaderDesktop({Key? key}) : super(key: key);

  @override
  _InfluencerHeaderDesktopState createState() =>
      _InfluencerHeaderDesktopState();
}

class _InfluencerHeaderDesktopState extends State<InfluencerHeaderDesktop> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            color: HexColor('#131212'),
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Column(
                      children: [
                        const Text(
                          'Waitlist as a User Influencer Freelancer ',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: whiteColor, fontSize: 50),
                        ),
                        const Text(
                          'Brand Business or Organization',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: whiteColor, fontSize: 50),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Join the Waitlist And Be One Of The First Users, Influencers, Freelancers, Brands',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: greyIsh, fontSize: 20),
                          ),
                        ),
                        Text(
                          'Bussinesses Or Organizations To Use Our Products Upon Its Launch',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: greyIsh, fontSize: 20),
                        ),
                      ],
                    ),
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
