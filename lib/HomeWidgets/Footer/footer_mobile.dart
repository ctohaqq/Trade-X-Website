import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tradex/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterMobile extends StatefulWidget {
  const FooterMobile({Key? key}) : super(key: key);

  @override
  _FooterMobileState createState() => _FooterMobileState();
}

class _FooterMobileState extends State<FooterMobile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        height: 200,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 70.0,
                    left: 70.0,
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'GET TO KNOW US',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 10,
                        ),
                      ),
                      const Text(
                        '  INFO@FORGEN-Z.COM',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 10,
                        ),
                      ),
                      const Text(
                        'NEW YORK, USA',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 10,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Row(
                          children: [
                            InkWell(
                              child: const FaIcon(
                                FontAwesomeIcons.twitter,
                                size: 20,
                                color: Colors.blue,
                              ),
                              onTap: () async {
                                const url = 'https://twitter.com/GenZCorp?s=09';
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                            ),
                            // InkWell(
                            //   child: const FaIcon(
                            //     FontAwesomeIcons.instagram,
                            //     size: 25,
                            //     color: Colors.red,
                            //   ),
                            //   onTap: () async {
                            //     const url = 'https://twitter.com/whoisaddison';
                            //     if (await canLaunch(url)) {
                            //       await launch(url);
                            //     } else {
                            //       throw 'Could not launch $url';
                            //     }
                            //   },
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 80.0,
                        top: 40.0,
                      ),
                      child: SizedBox(
                        height: 80,
                        width: 105,
                        child: Image.asset('assets/images/logo.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Row(
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.copyright,
                            size: 10,
                            color: Colors.white,
                          ),
                          Text(
                            'Trade-X, All rights reserved',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
