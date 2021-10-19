import 'package:flutter/material.dart';
import 'package:tradex/constants/colors.dart';

class ProductBodyOneMobile extends StatefulWidget {
  const ProductBodyOneMobile({Key? key}) : super(key: key);

  @override
  _ProductBodyOneMobileState createState() => _ProductBodyOneMobileState();
}

class _ProductBodyOneMobileState extends State<ProductBodyOneMobile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: whiteColor,
        width: MediaQuery.of(context).size.width,
        height: 400,
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "WE'VE CREATED A CUSTOMER ENGAGEMENT SERVICE TO ENABLE",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                            Text(
                              "DRIVERS OF GEN Z CONSUMPTION (OUR CUSTOMERS), TO HAVE",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                            Text(
                              "ACCESS TO GEN Z CONSUMSERS ON OUR PLATFORM, AS FOR",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                            Text(
                              "FREELANCER AND INFLUENCERS, WE'VE CREATED 2 OTHER PRODUCT",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                            Text(
                              "SERVICES. A FREELANCER PRODUCT AND AN INFLUENCER PRODUCT.",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "We've classified all drivers of Gen Z consumption/our customers into the",
                          style: TextStyle(
                            color: greyIsh,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "following categories: ",
                          style: TextStyle(
                            color: greyIsh,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0, top: 4.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "- Bussinesses: Product and Service Businesses, Startups and Media.",
                          style: TextStyle(
                            color: greyIsh,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0, top: 4.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "- Organizations: Political, Climate, Social Justice.",
                          style: TextStyle(
                            color: greyIsh,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0, top: 4.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "- Instituitions: Government, Government Agencies, Academic Institutions",
                          style: TextStyle(
                            color: greyIsh,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0, top: 4.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "- Freelancers of all types:Tech, Legal and All Others.",
                          style: TextStyle(
                            color: greyIsh,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0, top: 4.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "- Brands: Professional, Non-Professional, Influencer brands.",
                          style: TextStyle(
                            color: greyIsh,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0, top: 4.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "- Influencers: Content creators of All Types.",
                          style: TextStyle(
                            color: greyIsh,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
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
