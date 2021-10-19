// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tradex/Database/influencer_entery_model.dart';
import 'package:tradex/Routes/routes.dart';
import 'package:tradex/constants/colors.dart';
import 'package:tradex/helpers/failed_dialog_box.dart';
import 'package:tradex/helpers/succes_dialog_box.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class InfluencerMobileBodyOne extends StatefulWidget {
  const InfluencerMobileBodyOne({Key? key}) : super(key: key);

  @override
  _InfluencerMobileBodyOneState createState() =>
      _InfluencerMobileBodyOneState();
}

class _InfluencerMobileBodyOneState extends State<InfluencerMobileBodyOne> {
  final TextEditingController _fullName = TextEditingController();
  String firstName = '';
  final TextEditingController _userName = TextEditingController();
  String lastName = '';
  final TextEditingController _email = TextEditingController();
  String email = '';
  final TextEditingController _creatorType = TextEditingController();
  String creatorType = '';
  final TextEditingController _agency = TextEditingController();
  String agency = '';
  final TextEditingController _socialMedia = TextEditingController();
  String socialMedia = '';

  void clearText() {
    _fullName.clear();
    _userName.clear();
    _email.clear();
    _creatorType.clear();
    _agency.clear();
    _socialMedia.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45.0),
                border: Border.all(color: greyIsh),
                color: Colors.transparent,
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: const Text(
                        'Users',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      onTap: () {
                        context.vxNav.push(Uri.parse(MyRoutes.userRoute));
                      },
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: redColor,
                          fixedSize: const Size(100, 50),
                        ),
                        onPressed: () {
                          context.vxNav
                              .push(Uri.parse(MyRoutes.influencerRoute));
                        },
                        child: const Text(
                          'Influencer',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      child: const Text(
                        'Freelancers',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      onTap: () {},
                    ),
                    InkWell(
                      child: const Text(
                        'Brands',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      onTap: () {},
                    ),
                    InkWell(
                      child: const Text(
                        'BOIs',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 80),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 30.0, left: 30.0, right: 30.0),
            child: Container(
              height: 80,
              width: 800,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            'FULLNAME',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            bottom: 10.0,
                          ),
                          child: Container(
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: greyIsh),
                              color: Colors.transparent,
                            ),
                            child: TextField(
                              controller: _fullName,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                focusColor: greyIsh,
                                border: InputBorder.none,
                                hintText: "John",
                                contentPadding: const EdgeInsets.all(15),
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
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            'USERNAME',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10.0,
                            bottom: 10.0,
                          ),
                          child: Container(
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: greyIsh),
                              color: Colors.transparent,
                            ),
                            child: TextField(
                              controller: _userName,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                focusColor: greyIsh,
                                border: InputBorder.none,
                                hintText: "Doe",
                                contentPadding: const EdgeInsets.all(15),
                                hintStyle: TextStyle(
                                  color: greyIsh,
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 15,
                                color: greyIsh,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 30.0, left: 30.0, right: 30.0),
            child: Container(
              height: 80,
              width: 811,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text(
                              'EMAIL',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10.0,
                              bottom: 10.0,
                            ),
                            child: Container(
                              width: 420,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: greyIsh),
                                color: Colors.transparent,
                              ),
                              child: TextField(
                                controller: _email,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  focusColor: greyIsh,
                                  border: InputBorder.none,
                                  hintText: "Business Mail/Personal Mail",
                                  contentPadding: const EdgeInsets.all(15),
                                  hintStyle: TextStyle(color: greyIsh),
                                ),
                                onChanged: (email) {
                                  email = email.toString();
                                },
                                style: TextStyle(
                                  fontSize: 15,
                                  color: greyIsh,
                                  fontWeight: FontWeight.w600,
                                ),
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
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 30.0, left: 30.0, right: 30.0),
            child: Container(
              height: 80,
              width: 800,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            'CREATOR TYPE',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            bottom: 10.0,
                          ),
                          child: Container(
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: greyIsh),
                              color: Colors.transparent,
                            ),
                            child: TextField(
                              controller: _creatorType,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  focusColor: greyIsh,
                                  border: InputBorder.none,
                                  hintText: "Youtuber, Tiktoker, etc.",
                                  contentPadding: const EdgeInsets.all(15),
                                  hintStyle: TextStyle(color: greyIsh)),
                              onChanged: (creatorType) {
                                creatorType = creatorType.toString();
                              },
                              style: TextStyle(
                                fontSize: 15,
                                color: greyIsh,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            'AGENCY',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10.0,
                            bottom: 10.0,
                          ),
                          child: Container(
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: greyIsh),
                              color: Colors.transparent,
                            ),
                            child: TextField(
                              controller: _agency,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  focusColor: greyIsh,
                                  border: InputBorder.none,
                                  hintText: "agency",
                                  contentPadding: const EdgeInsets.all(15),
                                  hintStyle: TextStyle(
                                    color: greyIsh,
                                  )),
                              onChanged: (agency) {
                                agency = agency.toString();
                              },
                              style: TextStyle(
                                fontSize: 15,
                                color: greyIsh,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 30.0, left: 30.0, right: 30.0),
            child: Container(
              height: 80,
              width: 811,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text(
                              'SOCIAL MEDIA',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10.0,
                              bottom: 10.0,
                            ),
                            child: Container(
                              width: 420,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: greyIsh),
                                color: Colors.transparent,
                              ),
                              child: TextField(
                                controller: _socialMedia,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  focusColor: greyIsh,
                                  border: InputBorder.none,
                                  hintText: "Social Media",
                                  contentPadding: const EdgeInsets.all(15),
                                  hintStyle: TextStyle(color: greyIsh),
                                ),
                                onChanged: (socialMedia) {
                                  socialMedia = socialMedia.toString();
                                },
                                style: TextStyle(
                                  fontSize: 15,
                                  color: greyIsh,
                                  fontWeight: FontWeight.w600,
                                ),
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
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    bottom: 10.0,
                  ),
                  child: Container(
                    width: 180,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: greyIsh),
                      color: Colors.transparent,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_email.text.isEmpty ||
                            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(_email.text) ||
                            _fullName.text.isEmpty ||
                            _fullName.text.length < 2 ||
                            _userName.text.isEmpty ||
                            _userName.text.length < 2 ||
                            _creatorType.text.isEmpty ||
                            _agency.text.isEmpty ||
                            _socialMedia.text.isEmpty) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const FailedDialogBoxInfluencer();
                            },
                          );
                        } else {
                          final generalUserEnteryMap = InfluencerEnteryModel(
                            fullName: _fullName.text,
                            userName: _userName.text,
                            email: _email.text,
                            creatorType: _creatorType.text,
                            agency: _agency.text,
                            socialMedia: _socialMedia.text,
                          ).toMap();
                          FirebaseFirestore.instance
                              .collection('Influencers')
                              .add(generalUserEnteryMap);
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const SuccessDialogBoxInfluencer();
                            },
                          );
                          clearText();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.black,
                        primary: redColor,
                      ),
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
