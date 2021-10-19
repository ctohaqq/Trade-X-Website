// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tradex/constants/colors.dart';

class BodyOneTablet extends StatefulWidget {
  const BodyOneTablet({Key? key}) : super(key: key);

  @override
  _BodyOneTabletState createState() => _BodyOneTabletState();
}

class _BodyOneTabletState extends State<BodyOneTablet> {
  final int val = 25;
  final int val2 = 125;
  final int val3 = 2;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: whiteColor,
        width: MediaQuery.of(context).size.width,
        height: 380,
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Column(
                  children: [
                    const Text(
                      'OUR OPPORTUNITY',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Here at Trade-X, our vision is to be the consumer's best friend",
                      style: TextStyle(
                        color: greyIsh,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "and we do that by creating products and services that seek to meet consumer taste",
                      style: TextStyle(
                        color: greyIsh,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 100.0, top: 50.0),
                          child: Column(
                            children: [
                              Container(
                                child: const Text(
                                  '40%',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              Container(
                                height: 12,
                                width: 100,
                                color: goldIsh,
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: const Text(
                                        "out of the global",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        "consumer population",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20, top: 50.0),
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  "\$$val-\$$val2",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              Container(
                                height: 12,
                                width: 160,
                                color: goldIsh,
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: const Text(
                                        "Billion in direct",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        "consumer spending",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 80.0, top: 50.0),
                          child: Column(
                            children: [
                              Container(
                                child: const Text(
                                  '31.2%',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              Container(
                                height: 12,
                                width: 100,
                                color: goldIsh,
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "That is \$$val3 Billion of",
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        "the global population",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
