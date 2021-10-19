import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tradex/constants/colors.dart';

class InfluencerHeaderMobile extends StatefulWidget {
  const InfluencerHeaderMobile({Key? key}) : super(key: key);

  @override
  _InfluencerHeaderMobileState createState() => _InfluencerHeaderMobileState();
}

class _InfluencerHeaderMobileState extends State<InfluencerHeaderMobile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            color: HexColor('#131212'),
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Column(
                      children: [
                        const Text(
                          'Wailist as a User Influencer Freelancer ',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: whiteColor, fontSize: 20),
                        ),
                        const Text(
                          'Brand Business or Organization',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: whiteColor, fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Join the Wailist And Be One Of The First Users, Influencers, Freelancers,',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: greyIsh, fontSize: 15),
                          ),
                        ),
                        Text(
                          'Brands, Bussinesses Or Organizations To Use Our Products Upon Its Launch',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: greyIsh, fontSize: 15),
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
