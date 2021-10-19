// ignore_for_file: implementation_imports

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tradex/Database/user_entery_model.dart';
import 'package:tradex/Routes/routes.dart';
import 'package:tradex/constants/colors.dart';
import 'package:tradex/helpers/failed_dialog_box.dart';
import 'package:tradex/helpers/succes_dialog_box.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class UserBodyOneTab extends StatefulWidget {
  const UserBodyOneTab({Key? key}) : super(key: key);

  @override
  _UserBodyOneTabState createState() => _UserBodyOneTabState();
}

class _UserBodyOneTabState extends State<UserBodyOneTab> {
  final TextEditingController _fullName = TextEditingController();
  String fullName = '';
  final TextEditingController _email = TextEditingController();
  String email = '';
  String gender = 'Male';
  String interest = 'Crypto';
  String date = "";
  DateTime selectedDate = DateTime.now();
  void clearText() {
    _fullName.clear();
    _email.clear();
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
              width: 750,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45.0),
                border: Border.all(color: greyIsh),
                color: Colors.transparent,
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: redColor,
                          fixedSize: const Size(200, 50),
                        ),
                        onPressed: () {
                          context.vxNav.push(Uri.parse(MyRoutes.userRoute));
                        },
                        child: const Text(
                          'User',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      child: const Text(
                        'Influencer',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      onTap: () {
                        context.vxNav.push(Uri.parse(MyRoutes.influencerRoute));
                      },
                    ),
                    InkWell(
                      child: const Text(
                        'Freelancers',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      onTap: () {
                        context.vxNav.push(Uri.parse(MyRoutes.freelancerRoute));
                      },
                    ),
                    InkWell(
                      child: const Text(
                        'Brands',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
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
                          fontSize: 15,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(
                top: 30.0, bottom: 30.0, left: 30.0, right: 30.0),
            child: Container(
              height: 80,
              width: 810,
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
                            width: 795,
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
                                  hintText: "John Doe",
                                  contentPadding: const EdgeInsets.all(15),
                                  hintStyle: TextStyle(color: greyIsh)),
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
          // const SizedBox(height: 10),
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
                              width: 795,
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
                            'GENDER',
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
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: greyIsh),
                              color: Colors.transparent,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: DropdownButton(
                                value: gender,
                                icon:
                                    const Icon(Icons.arrow_drop_down_outlined),
                                iconSize: 24,
                                style: const TextStyle(color: Colors.black),
                                underline: Container(
                                  color: greyIsh,
                                ),
                                onChanged: (newValue) {
                                  setState(() {
                                    gender = newValue.toString();
                                  });
                                },
                                items: <String>[
                                  'Male',
                                  'Femal',
                                  'Others'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
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
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'DATE OF BIRTH',
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
                              width: 350,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: greyIsh),
                                color: Colors.transparent,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
                                    ),
                                    const SizedBox(width: 10.0),
                                    SizedBox(
                                      height: 50,
                                      width: 120,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          _selectDate(context);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          onPrimary: Colors.black,
                                          primary: redColor,
                                        ),
                                        child: const Text(
                                          'Choose Date',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
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
                              'INTERESTS',
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
                              width: 798,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: greyIsh),
                                color: Colors.transparent,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: DropdownButton(
                                  value: interest,
                                  icon: const Icon(
                                      Icons.arrow_drop_down_outlined),
                                  iconSize: 24,
                                  style: const TextStyle(color: Colors.black),
                                  underline: Container(
                                    color: greyIsh,
                                  ),
                                  onChanged: (newValue) {
                                    setState(() {
                                      interest = newValue.toString();
                                    });
                                  },
                                  items: <String>[
                                    'Crypto',
                                    'News',
                                    'Sporst',
                                    'Music',
                                    'Fashion & Lifestyle',
                                    'LGBTGIA+',
                                    'Others'
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          )
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
                    width: 500,
                    height: 60,
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
                            _fullName.text.length < 2) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const FailedDialogBoxInfluencer();
                            },
                          );
                        } else {
                          final generalUserEnteryMap = UserEnteryModel(
                            fullName: _fullName.text,
                            email: _email.text,
                            gender: gender,
                            dateOfBirth: selectedDate,
                            interest: interest,
                          ).toMap();
                          FirebaseFirestore.instance
                              .collection('Users')
                              .add(generalUserEnteryMap);
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const SuccesDialogBoxUser();
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
            height: 150,
          )
        ],
      ),
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1960),
      lastDate: DateTime(2025),

      //(BuildContext context, Widget child) {
      //   return Theme(
      //     data: ThemeData.light().copyWith(
      //       colorScheme: ColorScheme.fromSwatch(
      //           primarySwatch: Colors.red,
      //           primaryColorDark: Colors.red,
      //           accentColor: Colors.red),
      //       backgroundColor: Colors.white,
      //     ),
      //     child: child,
      //   );
      // },
    );
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
      });
    }
  }
}
