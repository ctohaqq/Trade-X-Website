// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tradex/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class BodyFourDesktop extends StatefulWidget {
  const BodyFourDesktop({Key? key}) : super(key: key);

  @override
  _BodyFourDesktopState createState() => _BodyFourDesktopState();
}

class _BodyFourDesktopState extends State<BodyFourDesktop> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 500,
        color: whiteColor,
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 80.0),
                    child: Text(
                      'Our consumption is driven by social',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Text(
                    'trends and influencers',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'influencers like',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/images/ponton.jpg',
                                ),
                                radius: 65,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Text(
                                  'Olivia Ponton',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    child: const FaIcon(
                                      FontAwesomeIcons.instagram,
                                      size: 25,
                                    ),
                                    onTap: () async {
                                      const url =
                                          'https://www.instagram.com/olivia.ponton/';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    child: const FaIcon(
                                      FontAwesomeIcons.youtube,
                                      size: 25,
                                      color: Colors.red,
                                    ),
                                    onTap: () async {
                                      const url =
                                          'https://www.youtube.com/channel/UCd2fTPrzomwIWEiVE6boQUg';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    child: const FaIcon(
                                      FontAwesomeIcons.tiktok,
                                      size: 25,
                                    ),
                                    onTap: () async {
                                      const url =
                                          'https://www.tiktok.com/@iamoliviaponton/';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    child: const FaIcon(
                                      FontAwesomeIcons.twitter,
                                      size: 25,
                                      color: Colors.blue,
                                    ),
                                    onTap: () async {
                                      const url =
                                          'https://twitter.com/iamoliviaponton';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/images/ben.jpg',
                                ),
                                radius: 65,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Text(
                                  'Ben of the week',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    child: const FaIcon(
                                      FontAwesomeIcons.instagram,
                                      size: 25,
                                    ),
                                    onTap: () async {
                                      const url =
                                          'https://www.instagram.com/benoftheweek/';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    child: const FaIcon(
                                      FontAwesomeIcons.youtube,
                                      size: 25,
                                      color: Colors.red,
                                    ),
                                    onTap: () async {
                                      const url =
                                          'https://www.youtube.com/channel/UC_UnVDztkvE1hw064XFTNSQ';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    child: const FaIcon(
                                      FontAwesomeIcons.tiktok,
                                      size: 25,
                                    ),
                                    onTap: () async {
                                      const url =
                                          'https://www.tiktok.com/@benoftheweek/?';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    child: const FaIcon(
                                      FontAwesomeIcons.twitter,
                                      size: 25,
                                      color: Colors.blue,
                                    ),
                                    onTap: () async {
                                      const url =
                                          'https://twitter.com/benoftheweek';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/images/josh.jpg',
                                ),
                                radius: 65,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Text(
                                  'Josh Richards',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    child: const FaIcon(
                                      FontAwesomeIcons.instagram,
                                      size: 25,
                                    ),
                                    onTap: () async {
                                      const url =
                                          'https://www.instagram.com/joshrichards/';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    child: const FaIcon(
                                      FontAwesomeIcons.youtube,
                                      size: 25,
                                      color: Colors.red,
                                    ),
                                    onTap: () async {
                                      const url =
                                          'https://www.youtube.com/channel/UCMhyesTXP5MZO7l2cxv9xKw/videos';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    child: const FaIcon(
                                      FontAwesomeIcons.tiktok,
                                      size: 25,
                                    ),
                                    onTap: () async {
                                      const url =
                                          'https://www.tiktok.com/@joshrichards?';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    child: const FaIcon(
                                      FontAwesomeIcons.twitter,
                                      size: 25,
                                      color: Colors.blue,
                                    ),
                                    onTap: () async {
                                      const url =
                                          'https://twitter.com/JoshRichards';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/images/rae.jpg',
                                ),
                                radius: 65,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 15.0),
                                child: Text(
                                  'Addision Rae',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    child: const FaIcon(
                                      FontAwesomeIcons.instagram,
                                      size: 25,
                                    ),
                                    onTap: () async {
                                      const url =
                                          'https://www.instagram.com/ADDISONRAEE/';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    child: const FaIcon(
                                      FontAwesomeIcons.youtube,
                                      size: 25,
                                      color: Colors.red,
                                    ),
                                    onTap: () async {
                                      const url =
                                          'https://www.youtube.com/channel/UCsjVdwXJydmlSLVT2zDuwpQ';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                      child: const FaIcon(
                                        FontAwesomeIcons.tiktok,
                                        size: 25,
                                      ),
                                      onTap: () async {
                                        const url =
                                            'https://www.tiktok.com/@addisonre?';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'Could not launch $url';
                                        }
                                      }),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    child: const FaIcon(
                                      FontAwesomeIcons.twitter,
                                      size: 25,
                                      color: Colors.blue,
                                    ),
                                    onTap: () async {
                                      const url =
                                          'https://twitter.com/whoisaddison';
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
