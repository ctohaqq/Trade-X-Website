// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tradex/Database/product_entery_model.dart';
import 'package:tradex/constants/colors.dart';
import 'package:tradex/helpers/failed_dialog_box.dart';
import 'package:tradex/helpers/succes_dialog_box.dart';

class ProductBodyThreeTab extends StatefulWidget {
  const ProductBodyThreeTab({Key? key}) : super(key: key);

  @override
  _ProductBodyThreeTabState createState() => _ProductBodyThreeTabState();
}

class _ProductBodyThreeTabState extends State<ProductBodyThreeTab> {
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
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Column(
                      children: [
                        const Text(
                          'Join Our Waitlist',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: whiteColor, fontSize: 30),
                        ),
                        const Text(
                          'Program',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: whiteColor, fontSize: 30),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'For Freelancers And Influencers: Get Paid To Offer More Service And Product To Genzes.',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: greyIsh, fontSize: 18),
                          ),
                        ),
                        Text(
                          'Join Our Waitlist And Email Us At Customer@Forgen-Z.com',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: greyIsh, fontSize: 18),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
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
                                            hintText:
                                                "Enter your email address",
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
                                  borderRadius: BorderRadius.circular(30),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: redColor,
                                          fixedSize: const Size(180, 50)),
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
                                              ProductEnteryModel(
                                                      email: _emailText.text)
                                                  .toMap();
                                          FirebaseFirestore.instance
                                              .collection('Products&Services')
                                              .add(generalUserEnteryMap);
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return const SuccessDialogBoxInvestor();
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
