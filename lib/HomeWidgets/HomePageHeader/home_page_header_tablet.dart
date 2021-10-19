import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tradex/Database/generalUser_entery_model.dart';
import 'package:tradex/constants/colors.dart';
import 'package:tradex/helpers/failed_dialog_box.dart';
import 'package:tradex/helpers/succes_dialog_box.dart';

class HomePageHeaderTablet extends StatefulWidget {
  const HomePageHeaderTablet({Key? key}) : super(key: key);

  @override
  _HomePageHeaderTabletState createState() => _HomePageHeaderTabletState();
}

class _HomePageHeaderTabletState extends State<HomePageHeaderTablet> {
  final TextEditingController _emailText = TextEditingController();
  String emailValue = '';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void clearText() {
    _emailText.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            color: HexColor('#131212'),
            height: 550,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Column(
                      children: [
                        const Text(
                          'WE ARE GEN-Z',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: whiteColor, fontSize: 50),
                        ),
                        const Text(
                          'CONSUMER COMPANY',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: whiteColor, fontSize: 50),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'creating products and services that empowers gen-z consumption',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: greyIsh, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Container(
                            height: 60,
                            width: 550,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45.0),
                              border: Border.all(color: greyIsh),
                              color: Colors.transparent,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: SizedBox(
                                    width: 300,
                                    child: Form(
                                      autovalidateMode: AutovalidateMode.always,
                                      key: _formKey,
                                      child: TextField(
                                        controller: _emailText,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          focusColor: greyIsh,
                                          border: InputBorder.none,
                                          hintText: "Enter your email address",
                                          hintStyle: TextStyle(color: greyIsh),
                                        ),
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: greyIsh,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: redColor,
                                          fixedSize: const Size(200, 50)),
                                      onPressed: () {
                                        if (_emailText.text.isEmpty ||
                                            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                .hasMatch(_emailText.text)) {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return const FailedDialogBoxGeneral();
                                            },
                                          );
                                        } else {
                                          final generalUserEnteryMap =
                                              GeneralUserEntery(
                                                      email: _emailText.text)
                                                  .toMap();
                                          FirebaseFirestore.instance
                                              .collection('generalUsers')
                                              .add(generalUserEnteryMap);
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return const SuccessDialogBox();
                                            },
                                          );
                                          clearText();
                                        }
                                      },
                                      child: const Text("Join our waitlist")),
                                )
                              ],
                            ),
                          ),
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
