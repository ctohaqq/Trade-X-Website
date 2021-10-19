// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tradex/constants/colors.dart';

class BodyOneMobile extends StatefulWidget {
  const BodyOneMobile({Key? key}) : super(key: key);

  @override
  _BodyOneMobileState createState() => _BodyOneMobileState();
}

class _BodyOneMobileState extends State<BodyOneMobile> {
  final int val = 25;
  final int val2 = 125;
  final int val3 = 2;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          color: whiteColor,
          width: MediaQuery.of(context).size.width,
          height: 295,
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Column(children: [
                    const Text(
                      'OUR OPPORTUNITY',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Here at Trade-X, our vision is to be the consumer's best friend",
                      style: TextStyle(
                        color: greyIsh,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "and we do that by creating products and services that seek to meet consumer taste",
                      style: TextStyle(
                        color: greyIsh,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: const Text(
                        '40%',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      height: 10,
                      width: 50,
                      color: goldIsh,
                    ),
                    Container(
                      child: const Text(
                        "out of the global",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                    Container(
                      child: const Text(
                        "consumer population",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        child: Text(
                          "\$$val-\$$val2",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 12,
                      width: 60,
                      color: goldIsh,
                    ),
                    Container(
                      child: const Text(
                        "Billion in direct",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                    Container(
                      child: const Text(
                        "consumer spending",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        child: const Text(
                          '31.2%',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 10,
                      width: 50,
                      color: goldIsh,
                    ),
                    Container(
                      child: Text(
                        "That is \$$val3 Billion of",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                    Container(
                      child: const Text(
                        "the global population",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                  ]),
                ),
              )
            ],
          )),
    );
  }
}
