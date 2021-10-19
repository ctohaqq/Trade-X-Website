import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tradex/Database/brands_entery_model.dart';
import 'package:tradex/Routes/routes.dart';
import 'package:tradex/constants/colors.dart';
import 'package:tradex/helpers/failed_dialog_box.dart';
import 'package:tradex/helpers/succes_dialog_box.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class BrandBodyMobile extends StatefulWidget {
  const BrandBodyMobile({Key? key}) : super(key: key);

  @override
  _BrandBodyMobileState createState() => _BrandBodyMobileState();
}

class _BrandBodyMobileState extends State<BrandBodyMobile> {
  final TextEditingController _fullName = TextEditingController();
  String firstName = '';
  final TextEditingController _brandName = TextEditingController();
  String brandName = '';
  final TextEditingController _brandEmail = TextEditingController();
  String brandEmail = '';
  final TextEditingController _industry = TextEditingController();
  String industry = '';
  final TextEditingController _prodService = TextEditingController();
  String prodService = '';
  final TextEditingController _about = TextEditingController();
  String about = '';
  void clearText() {
    _fullName.clear();
    _brandName.clear();
    _brandEmail.clear();
    _industry.clear();
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
                    InkWell(
                      child: const Text(
                        'Influencer',
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
                    InkWell(
                      child: const Text(
                        'Freelancers',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      onTap: () {
                        context.vxNav.push(Uri.parse(MyRoutes.freelancerRoute));
                      },
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: redColor,
                          fixedSize: const Size(105, 50),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Brand',
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
                        'BOIs',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      onTap: () {
                        context.vxNav.push(Uri.parse(MyRoutes.boiRoute));
                      },
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
              width: 400,
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
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            bottom: 10.0,
                          ),
                          child: Container(
                            width: 388,
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
                                fontSize: 12,
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
              width: 400,
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
                              'BRAND NAME',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10.0,
                              bottom: 10.0,
                            ),
                            child: Container(
                              width: 388,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: greyIsh),
                                color: Colors.transparent,
                              ),
                              child: TextField(
                                controller: _brandName,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  focusColor: greyIsh,
                                  border: InputBorder.none,
                                  hintText: " brand name",
                                  contentPadding: const EdgeInsets.all(15),
                                  hintStyle: TextStyle(color: greyIsh),
                                ),
                                onChanged: (socialMedia) {
                                  socialMedia = socialMedia.toString();
                                },
                                style: TextStyle(
                                  fontSize: 12,
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
          // const SizedBox(height: 10),

          Padding(
            padding:
                const EdgeInsets.only(bottom: 30.0, left: 47.0, right: 30.0),
            child: Container(
              height: 80,
              width: 800,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
              ),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            'INDUSTRY',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            bottom: 10.0,
                          ),
                          child: Container(
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: greyIsh),
                              color: Colors.transparent,
                            ),
                            child: TextField(
                              controller: _industry,
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                  focusColor: greyIsh,
                                  border: InputBorder.none,
                                  hintText: "Industry",
                                  contentPadding: const EdgeInsets.all(15),
                                  hintStyle: TextStyle(color: greyIsh)),
                              onChanged: (industry) {
                                industry = industry.toString();
                              },
                              style: TextStyle(
                                fontSize: 12,
                                color: greyIsh,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 50),
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
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10.0,
                            bottom: 10.0,
                          ),
                          child: Container(
                            width: 170,
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
                              onChanged: (prodService) {
                                prodService = prodService.toString();
                              },
                              style: TextStyle(
                                fontSize: 12,
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
              width: 400,
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
                              'BRAND EMAIL',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10.0,
                              bottom: 10.0,
                            ),
                            child: Container(
                              width: 388,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: greyIsh),
                                color: Colors.transparent,
                              ),
                              child: TextField(
                                controller: _brandEmail,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  focusColor: greyIsh,
                                  border: InputBorder.none,
                                  hintText: "Brand Mail",
                                  contentPadding: const EdgeInsets.all(15),
                                  hintStyle: TextStyle(color: greyIsh),
                                ),
                                style: TextStyle(
                                  fontSize: 12,
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
              width: 400,
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
                              'TELL US ABOUT YOUR BRAND',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10.0,
                              bottom: 10.0,
                            ),
                            child: Container(
                              width: 388,
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
                                  hintText: "What does your brand do?",
                                  contentPadding: const EdgeInsets.all(15),
                                  hintStyle: TextStyle(color: greyIsh),
                                ),
                                style: TextStyle(
                                  fontSize: 12,
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
                    width: 165,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: greyIsh),
                      color: Colors.transparent,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_brandEmail.text.isEmpty ||
                            !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(_brandEmail.text) ||
                            _fullName.text.isEmpty ||
                            _fullName.text.length < 2 ||
                            _industry.text.isEmpty ||
                            _industry.text.length < 3 ||
                            _about.text.isEmpty ||
                            _about.text.length < 5 ||
                            _prodService.text.isEmpty ||
                            _prodService.text.length < 2 ||
                            _brandName.text.isEmpty ||
                            _brandName.text.length < 2) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const FailedDialogBoxInfluencer();
                            },
                          );
                        } else {
                          final generalUserEnteryMap = BrandsEnteryModel(
                            fullName: _fullName.text,
                            brandName: _brandName.text,
                            brandEmail: _brandEmail.text,
                            productService: _prodService.text,
                            industry: _industry.text,
                            about: _about.text,
                          ).toMap();
                          FirebaseFirestore.instance
                              .collection('Brands')
                              .add(generalUserEnteryMap);
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const SuccessDialogBoxBrand();
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
}
