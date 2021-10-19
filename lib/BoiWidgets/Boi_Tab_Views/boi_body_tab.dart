import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tradex/Database/boi_entery_model.dart';
import 'package:tradex/Routes/routes.dart';
import 'package:tradex/constants/colors.dart';
import 'package:tradex/helpers/failed_dialog_box.dart';
import 'package:tradex/helpers/succes_dialog_box.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class BoiBodyTab extends StatefulWidget {
  const BoiBodyTab({Key? key}) : super(key: key);

  @override
  _BoiBodyTabState createState() => _BoiBodyTabState();
}

class _BoiBodyTabState extends State<BoiBodyTab> {
  final TextEditingController _companyEmail = TextEditingController();
  String email = '';
  final TextEditingController _companyName = TextEditingController();
  String companyName = '';
  final TextEditingController _revenue = TextEditingController();
  String revenue = '';

  final TextEditingController _team = TextEditingController();
  String team = '';
  final TextEditingController _prodService = TextEditingController();
  String prodService = '';
  final TextEditingController _about = TextEditingController();
  String about = '';
  final TextEditingController _website = TextEditingController();
  String website = '';
  void clearText() {
    _companyName.clear();
    _companyEmail.clear();
    _revenue.clear();
    _team.clear();
    _website.clear();
    _prodService.clear();
    _about.clear();
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
                    InkWell(
                      child: const Text(
                        'Users',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      onTap: () {
                        context.vxNav.push(Uri.parse(MyRoutes.userRoute));
                      },
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
                        'Brand',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      onTap: () {
                        context.vxNav.push(Uri.parse(MyRoutes.brandRoute));
                      },
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: redColor,
                          fixedSize: const Size(200, 50),
                        ),
                        onPressed: () {
                          context.vxNav.push(Uri.parse(MyRoutes.boiRoute));
                        },
                        child: const Text(
                          'Boi',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 35),
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
                            'COMPANY NAME',
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
                            child: TextField(
                              controller: _companyName,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  focusColor: greyIsh,
                                  border: InputBorder.none,
                                  hintText: "company name",
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
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'REVENUE',
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
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: greyIsh),
                              color: Colors.transparent,
                            ),
                            child: TextField(
                              controller: _revenue,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  focusColor: greyIsh,
                                  border: InputBorder.none,
                                  hintText: "revenue",
                                  contentPadding: const EdgeInsets.all(15),
                                  hintStyle: TextStyle(
                                    color: greyIsh,
                                  )),
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
                              'COMPANY EMAIL',
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
                                controller: _companyEmail,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  focusColor: greyIsh,
                                  border: InputBorder.none,
                                  hintText: "company Mail",
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
                            'TEAM SIZE',
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
                            child: TextField(
                              controller: _team,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  focusColor: greyIsh,
                                  border: InputBorder.none,
                                  hintText: "15, 20, 50, 110, etc.",
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
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'PRODUCT/SERVICE',
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
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: greyIsh),
                              color: Colors.transparent,
                            ),
                            child: TextField(
                              controller: _prodService,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  focusColor: greyIsh,
                                  border: InputBorder.none,
                                  hintText: "product/service",
                                  contentPadding: const EdgeInsets.all(15),
                                  hintStyle: TextStyle(
                                    color: greyIsh,
                                  )),
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
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'TELL US ABOUT YOUR COMPANY',
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
                      controller: _about,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          focusColor: greyIsh,
                          border: InputBorder.none,
                          hintText: "What does your company do",
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
          const SizedBox(
            height: 30,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'WEBSITE',
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
                      controller: _website,
                      keyboardType: TextInputType.url,
                      decoration: InputDecoration(
                          focusColor: greyIsh,
                          border: InputBorder.none,
                          hintText: "brand@gmail.com",
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
          const SizedBox(
            height: 30,
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
                        if (_companyEmail.text.isEmpty ||
                            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(_companyEmail.text) ||
                            _companyName.text.isEmpty ||
                            _companyName.text.length < 2 ||
                            _revenue.text.isEmpty ||
                            _revenue.text.length < 3 ||
                            _about.text.isEmpty ||
                            _about.text.length < 5 ||
                            _prodService.text.isEmpty ||
                            _prodService.text.length < 2 ||
                            _team.text.isEmpty ||
                            _team.text.length < 2 ||
                            _website.text.isEmpty ||
                            _website.text.length < 2) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const FailedDialogBoxInfluencer();
                            },
                          );
                        } else {
                          final generalUserEnteryMap = BoiEnteryModel(
                            companyName: _companyName.text,
                            teamSize: _team.text,
                            companyEmail: _companyEmail.text,
                            productService: _prodService.text,
                            revenue: _revenue.text,
                            about: _about.text,
                            website: _website.text,
                          ).toMap();
                          FirebaseFirestore.instance
                              .collection('BOIs')
                              .add(generalUserEnteryMap);
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const SuccessDialogBoxBoi();
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
          ),
        ],
      ),
    );
  }
}
