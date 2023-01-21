// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loan_app/screens/typesofloan/personalloan.dart';

class typeofloan extends StatefulWidget {
  const typeofloan({super.key});

  @override
  State<typeofloan> createState() => _typeofloanState();
}

class _typeofloanState extends State<typeofloan> {
  @override
  Widget build(BuildContext context) {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    var scwidth = mediaqry.size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF0E83DE),
        title: const Center(child: Text("loan type")),
        // ignore: prefer_const_constructors
        actions: const [
          SizedBox(
            width: 50,
          )
        ],
      ),
      backgroundColor: const Color(0xFF0E83DE),
      body: Container(
          height: scheight,
          width: scwidth,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: scheight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      String typeofloan = "Personal Loan";
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return personalloan(typeofloan);
                        },
                      ));
                    },
                    child: Container(
                      height: scheight * 0.15,
                      width: scwidth * 0.45,
                      decoration: BoxDecoration(
                          color: const Color(0xFFEFFBD7),
                          border: Border.all(color: const Color(0xFFB1CA64)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      // ignore: prefer_const_constructors
                      child: Column(children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, top: 20),
                              child: Container(
                                height: 60,
                                width: 60,
                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    // ignore: prefer_const_constructors
                                    border: Border.all(
                                        color: const Color(0xFFB1CA64),
                                        width: 2),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                      "images/typeofloan.svg",
                                      color: const Color(0xFFB1CA64)),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 5),
                              child: const Text.rich(TextSpan(
                                  text: "Personal Loan",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF737373)))),
                            ),
                          ],
                        )
                      ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      String typeofloan = "Home Loan";
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return personalloan(typeofloan);
                        },
                      ));
                    },
                    child: Container(
                      height: scheight * 0.15,
                      width: scwidth * 0.45,
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFEFCE),
                          border: Border.all(color: const Color(0xFFE3B747)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      // ignore: prefer_const_constructors
                      child: Column(children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, top: 20),
                              child: Container(
                                height: 60,
                                width: 60,
                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    // ignore: prefer_const_constructors
                                    border: Border.all(
                                        color: const Color(0xFFE3B747),
                                        width: 2),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50))),
                                child: Padding(
                                  padding: const EdgeInsets.all(9.0),
                                  child: SvgPicture.asset(
                                      "images/loantype2.svg",
                                      color: const Color(0xFFE3B747)),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 5),
                              child: const Text.rich(TextSpan(
                                  text: "Home Loan",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF737373)))),
                            ),
                          ],
                        )
                      ]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: scheight * 0.012,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      String typeofloan = "Business Loan";
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return personalloan(typeofloan);
                        },
                      ));
                    },
                    child: Container(
                      height: scheight * 0.15,
                      width: scwidth * 0.45,
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFE3DF),
                          border: Border.all(color: const Color(0xFFF2765E)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      // ignore: prefer_const_constructors
                      child: Column(children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, top: 20),
                              child: Container(
                                height: 60,
                                width: 60,
                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    // ignore: prefer_const_constructors
                                    border: Border.all(
                                        color: const Color(0xFFF2765E),
                                        width: 2),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50))),
                                child: Padding(
                                  padding: const EdgeInsets.all(9.0),
                                  child: SvgPicture.asset(
                                      "images/loantype3.svg",
                                      color: const Color(0xFFF2765E)),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 5),
                              child: const Text.rich(TextSpan(
                                  text: "Business Loan",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF737373)))),
                            ),
                          ],
                        )
                      ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      String typeofloan = "Education Loan";
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return personalloan(typeofloan);
                        },
                      ));
                    },
                    child: Container(
                      height: scheight * 0.15,
                      width: scwidth * 0.45,
                      decoration: BoxDecoration(
                          color: const Color(0xFFEFE7FF),
                          border: Border.all(color: const Color(0xFF8270F6)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      // ignore: prefer_const_constructors
                      child: Column(children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, top: 20),
                              child: Container(
                                height: 60,
                                width: 60,
                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    // ignore: prefer_const_constructors
                                    border: Border.all(
                                        color: const Color(0xFF8270F6),
                                        width: 2),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                      "images/loantype4.svg",
                                      color: const Color(0xFF8270F6)),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 5),
                              child: const Text.rich(TextSpan(
                                  text: "Education Loan",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF737373)))),
                            ),
                          ],
                        )
                      ]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: scheight * 0.012,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      String typeofloan = "Car Loan";
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return personalloan(typeofloan);
                        },
                      ));
                    },
                    child: Container(
                      height: scheight * 0.15,
                      width: scwidth * 0.45,
                      decoration: BoxDecoration(
                          color: const Color(0xFFEFFBD7),
                          border: Border.all(color: const Color(0xFFB1CA64)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      // ignore: prefer_const_constructors
                      child: Column(children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, top: 20),
                              child: Container(
                                height: 60,
                                width: 60,
                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    // ignore: prefer_const_constructors
                                    border: Border.all(
                                        color: const Color(0xFFB1CA64),
                                        width: 2),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50))),
                                child: Padding(
                                  padding: const EdgeInsets.all(9.0),
                                  child: SvgPicture.asset(
                                      "images/loantype5.svg",
                                      color: const Color(0xFFB1CA64)),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 5),
                              child: const Text.rich(TextSpan(
                                  text: "Car Loan",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF737373)))),
                            ),
                          ],
                        )
                      ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      String typeofloan = "Gold Loan";
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return personalloan(typeofloan);
                        },
                      ));
                    },
                    child: Container(
                      height: scheight * 0.15,
                      width: scwidth * 0.45,
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFEFCE),
                          border: Border.all(color: const Color(0xFFE3B747)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      // ignore: prefer_const_constructors
                      child: Column(children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, top: 20),
                              child: Container(
                                height: 60,
                                width: 60,
                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    // ignore: prefer_const_constructors
                                    border: Border.all(
                                        color: const Color(0xFFE3B747),
                                        width: 2),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50))),
                                child: Padding(
                                  padding: const EdgeInsets.all(9.0),
                                  child: SvgPicture.asset(
                                      "images/loantype6.svg",
                                      color: const Color(0xFFE3B747)),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 5),
                              child: const Text.rich(TextSpan(
                                  text: "Gold Loan",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF737373)))),
                            ),
                          ],
                        )
                      ]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: scheight * 0.012,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      String typeofloan = "Bike Loan";
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return personalloan(typeofloan);
                        },
                      ));
                    },
                    child: Container(
                      height: scheight * 0.15,
                      width: scwidth * 0.45,
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFE3DF),
                          border: Border.all(color: const Color(0xFFF2765E)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      // ignore: prefer_const_constructors
                      child: Column(children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, top: 20),
                              child: Container(
                                height: 60,
                                width: 60,
                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    // ignore: prefer_const_constructors
                                    border: Border.all(
                                        color: const Color(0xFFF2765E),
                                        width: 2),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                      "images/loantype7.svg",
                                      color: const Color(0xFFF2765E)),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 5),
                              child: const Text.rich(TextSpan(
                                  text: "Bike Loan",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF737373)))),
                            ),
                          ],
                        )
                      ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      String typeofloan = "Medical Loan";
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return personalloan(typeofloan);
                        },
                      ));
                    },
                    child: Container(
                      height: scheight * 0.15,
                      width: scwidth * 0.45,
                      decoration: BoxDecoration(
                          color: const Color(0xFFEFE7FF),
                          border: Border.all(color: const Color(0xFF8270F6)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      // ignore: prefer_const_constructors
                      child: Column(children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, top: 20),
                              child: Container(
                                height: 60,
                                width: 60,
                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    // ignore: prefer_const_constructors
                                    border: Border.all(
                                        color: const Color(0xFF8270F6),
                                        width: 2),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50))),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, left: 8, right: 8, bottom: 4),
                                  child: SvgPicture.asset(
                                      "images/loantype8.svg",
                                      color: const Color(0xFF8270F6)),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 5),
                              child: const Text.rich(TextSpan(
                                  text: "Medical Loan",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF737373)))),
                            ),
                          ],
                        )
                      ]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: scheight * 0.012,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      String typeofloan = "Wedding Loan";
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return personalloan(typeofloan);
                        },
                      ));
                    },
                    child: Container(
                      height: scheight * 0.15,
                      width: scwidth * 0.45,
                      decoration: BoxDecoration(
                          color: const Color(0xFFEFFBD7),
                          border: Border.all(color: const Color(0xFFB1CA64)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      // ignore: prefer_const_constructors
                      child: Column(children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, top: 20),
                              child: Container(
                                height: 60,
                                width: 60,
                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    // ignore: prefer_const_constructors
                                    border: Border.all(
                                        color: const Color(0xFFB1CA64),
                                        width: 2),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50))),
                                child: Padding(
                                  padding: const EdgeInsets.all(9.0),
                                  child: SvgPicture.asset(
                                      "images/loantype9.svg",
                                      color: const Color(0xFFB1CA64)),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 5),
                              child: const Text.rich(TextSpan(
                                  text: "Wedding Loan",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF737373)))),
                            ),
                          ],
                        )
                      ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      String typeofloan = "Vacation Loan";
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return personalloan(typeofloan);
                        },
                      ));
                    },
                    child: Container(
                      height: scheight * 0.15,
                      width: scwidth * 0.45,
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFEFCE),
                          border: Border.all(color: const Color(0xFFE3B747)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      // ignore: prefer_const_constructors
                      child: Column(children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 12.0, top: 20),
                              child: Container(
                                height: 60,
                                width: 60,
                                // ignore: prefer_const_constructors
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    // ignore: prefer_const_constructors
                                    border: Border.all(
                                        color: const Color(0xFFE3B747),
                                        width: 2),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(50))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                      "images/loantype10.svg",
                                      color: const Color(0xFFE3B747)),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            Padding(
                              padding: const EdgeInsets.only(left: 12, top: 5),
                              child: const Text.rich(TextSpan(
                                  text: "Vacation Loan",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF737373)))),
                            ),
                          ],
                        )
                      ]),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
