import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tradex/Database/investor_entery_model.dart';
import 'package:tradex/constants/colors.dart';
import 'package:tradex/helpers/failed_dialog_box.dart';
import 'package:tradex/helpers/succes_dialog_box.dart';

class InvestorBodyMobile extends StatefulWidget {
  const InvestorBodyMobile({Key? key}) : super(key: key);

  @override
  _InvestorBodyMobileState createState() => _InvestorBodyMobileState();
}

class _InvestorBodyMobileState extends State<InvestorBodyMobile> {
  final TextEditingController _emailText = TextEditingController();
  String emailValue = '';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void clearText() {
    _emailText.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: HexColor('#131212'),
              height: 700,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Column(
                        children: [
                          const Text(
                            'Become an Investor partner',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: whiteColor, fontSize: 25),
                          ),
                          const Text(
                            'Here at Trade-X',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: whiteColor, fontSize: 25),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'We Believe In The Future Of Gen-Z And Therefore We Are Looking For',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: greyIsh, fontSize: 20),
                            ),
                          ),
                          Text(
                            'The Right Investor Partner',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: greyIsh, fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Container(
                                height: 60,
                                width: 350,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45.0),
                                  border: Border.all(color: greyIsh),
                                  color: Colors.transparent,
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 160,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 28.0),
                                        child: Form(
                                          autovalidateMode:
                                              AutovalidateMode.always,
                                          key: _formKey,
                                          child: TextField(
                                            controller: _emailText,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            decoration: InputDecoration(
                                                focusColor: greyIsh,
                                                border: InputBorder.none,
                                                hintText: "Enter email address",
                                                hintStyle:
                                                    TextStyle(color: greyIsh)),
                                            onChanged: (_emailValue) {
                                              _emailValue =
                                                  _emailText.text.toString();
                                            },
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: greyIsh,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 58.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(40),
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                primary: redColor,
                                                fixedSize: const Size(120, 40)),
                                            onPressed: () {
                                              if (_emailText.text.isEmpty ||
                                                  !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                      .hasMatch(
                                                          _emailText.text)) {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return const FailedDialogBoxGeneral();
                                                  },
                                                );
                                              } else {
                                                final generalUserEnteryMap =
                                                    InvestorEnteryModel(
                                                            email:
                                                                _emailText.text)
                                                        .toMap();
                                                FirebaseFirestore.instance
                                                    .collection('Investors')
                                                    .add(generalUserEnteryMap);
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return const SuccessDialogBoxInvestor();
                                                  },
                                                );
                                                clearText();
                                              }
                                            },
                                            child: const Text("Join waitlist")),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0),
                            child: Text(
                              'Join Our Waitlist And Get Access To:',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: greyIsh, fontSize: 10),
                            ),
                          ),
                          Text(
                            'Our Pitch Deck,Our Opportunity,Our Plans',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: greyIsh, fontSize: 10),
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
      ),
    );
  }
}
 // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage('assets/images/circle.png'),
            //   ),
            // ),
