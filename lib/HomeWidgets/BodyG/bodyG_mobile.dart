// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tradex/Database/generalUser_entery_model.dart';
import 'package:tradex/constants/colors.dart';
import 'package:tradex/helpers/failed_dialog_box.dart';
import 'package:tradex/helpers/succes_dialog_box.dart';

class BodySevenMobile extends StatefulWidget {
  const BodySevenMobile({Key? key}) : super(key: key);

  @override
  _BodySevenMobileState createState() => _BodySevenMobileState();
}

class _BodySevenMobileState extends State<BodySevenMobile> {
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
            height: 425,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: Column(
                      children: [
                        const Text(
                          'Join Our Waitlist',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: whiteColor, fontSize: 20),
                        ),
                        const Text(
                          'Program',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: whiteColor, fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Get Started Now,Sign Up To Our Waitlist And Be Part Of The First Few',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: greyIsh, fontSize: 10),
                          ),
                        ),
                        Text(
                          'To Use Our Product Before Launch',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: greyIsh, fontSize: 10),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            height: 65,
                            width: 380,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45.0),
                              border: Border.all(color: greyIsh),
                              color: Colors.transparent,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(23.0),
                                  child: SizedBox(
                                    width: 160,
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
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: redColor,
                                          fixedSize: const Size(140, 40)),
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
