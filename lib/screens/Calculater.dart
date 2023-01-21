// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loan_app/screens/emicalculator.dart';
import 'package:loan_app/screens/fdcalculator.dart';
import 'package:loan_app/screens/gstcalculator.dart';
import 'package:loan_app/screens/sipcalculator.dart';

class Calculater extends StatefulWidget {
  const Calculater({super.key});

  @override
  State<Calculater> createState() => _CalculaterState();
}

class _CalculaterState extends State<Calculater> {
  @override
  Widget build(BuildContext context) {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    var scwidth = mediaqry.size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF0E83DE),
        title: const Center(child: Text("Instant Loan")),
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
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          SizedBox(height: scheight * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return emicalculator();
                    },
                  ));
                },
                child: Container(
                  height: scheight * 0.17,
                  width: scwidth * 0.9,
                  decoration: BoxDecoration(
                      color: const Color(0xFFEFFBD7),
                      border: Border.all(color: const Color(0xFFB1CA64)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: scheight * 0.03,
                            ),
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text.rich(TextSpan(
                                    text: "EMI Calculator",
                                    style: TextStyle(
                                        color: Color(0xFFB1CA64),
                                        fontSize: 17)))
                              ],
                            ),
                            SizedBox(
                              height: scheight * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text.rich(TextSpan(
                                    text: """Calculate your EMI 
for existing loan.""",
                                    style: TextStyle(
                                        color: Color(0xFF837D7D),
                                        fontSize: 13)))
                              ],
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: scheight * 0.035,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: SvgPicture.asset("images/calcu1.svg"),
                                )
                              ],
                            ),
                            SizedBox(
                              height: scheight * 0.035,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Color(
                                      0xFFB1CA64,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 25.0,
                                          blurStyle: BlurStyle.inner,
                                          color: Colors.black,
                                          offset: Offset(2, 2)),
                                    ],
                                  ),
                                  height: scheight * 0.03,
                                  width: scwidth * 0.25,
                                  child: const Center(
                                      child: Text(
                                    "Calculate",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                )
                              ],
                            )
                          ],
                        )
                      ]),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const sipcalculator();
                    },
                  ));
                },
                child: Container(
                  height: scheight * 0.17,
                  width: scwidth * 0.9,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFEFCE),
                      border: Border.all(color: const Color(0xFFE3B747)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: scheight * 0.03,
                            ),
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text.rich(TextSpan(
                                    text: "SIP Calculator",
                                    style: TextStyle(
                                        color: Color(0xFFE3B747),
                                        fontSize: 17)))
                              ],
                            ),
                            SizedBox(
                              height: scheight * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text.rich(
                                    TextSpan(text: """Calculate your SIP 
easy.""", style: TextStyle(color: Color(0xFF837D7D), fontSize: 13)))
                              ],
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: scheight * 0.035,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: SvgPicture.asset("images/calcu1.svg",
                                      color: const Color(0xFFE3B747)),
                                )
                              ],
                            ),
                            SizedBox(
                              height: scheight * 0.035,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Color(
                                      0xFFE3B747,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 25.0,
                                          blurStyle: BlurStyle.inner,
                                          color: Colors.black,
                                          offset: Offset(2, 2)),
                                    ],
                                  ),
                                  height: scheight * 0.03,
                                  width: scwidth * 0.25,
                                  child: const Center(
                                      child: Text(
                                    "Calculate",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                )
                              ],
                            )
                          ],
                        )
                      ]),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const Fdcalculator();
                    },
                  ));
                },
                child: Container(
                  height: scheight * 0.17,
                  width: scwidth * 0.9,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFE3DF),
                      border: Border.all(color: const Color(0xFFF2765E)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: scheight * 0.03,
                            ),
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text.rich(TextSpan(
                                    text: "FD Calculator",
                                    style: TextStyle(
                                        color: Color(0xFFF2765E),
                                        fontSize: 17)))
                              ],
                            ),
                            SizedBox(
                              height: scheight * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text.rich(
                                    TextSpan(text: """Calculate your FD
Value.""", style: TextStyle(color: Color(0xFF837D7D), fontSize: 13)))
                              ],
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: scheight * 0.035,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: SvgPicture.asset("images/calcu1.svg",
                                      color: const Color(0xFFF2765E)),
                                )
                              ],
                            ),
                            SizedBox(
                              height: scheight * 0.035,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Color(
                                      0xFFF2765E,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 25.0,
                                          blurStyle: BlurStyle.inner,
                                          color: Colors.black,
                                          offset: Offset(2, 2)),
                                    ],
                                  ),
                                  height: scheight * 0.03,
                                  width: scwidth * 0.25,
                                  child: const Center(
                                      child: Text(
                                    "Calculate",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                )
                              ],
                            )
                          ],
                        )
                      ]),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return GstCalculator();
                    },
                  ));
                },
                child: Container(
                  height: scheight * 0.17,
                  width: scwidth * 0.9,
                  decoration: BoxDecoration(
                      color: const Color(0xFFEFE7FF),
                      border: Border.all(color: const Color(0xFF8270F6)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: scheight * 0.03,
                            ),
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text.rich(TextSpan(
                                    text: "GST Calculator",
                                    style: TextStyle(
                                        color: Color(0xFF8270F6),
                                        fontSize: 17)))
                              ],
                            ),
                            SizedBox(
                              height: scheight * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text.rich(TextSpan(
                                    text: """Calculate your GST""",
                                    style: TextStyle(
                                        color: Color(0xFF837D7D),
                                        fontSize: 13)))
                              ],
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: scheight * 0.035,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: SvgPicture.asset("images/calcu1.svg",
                                      color: const Color(0xFF8270F6)),
                                )
                              ],
                            ),
                            SizedBox(
                              height: scheight * 0.035,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    color: Color(
                                      0xFF8270F6,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 25.0,
                                          blurStyle: BlurStyle.inner,
                                          color: Colors.black,
                                          offset: Offset(2, 2)),
                                    ],
                                  ),
                                  height: scheight * 0.03,
                                  width: scwidth * 0.25,
                                  child: const Center(
                                      child: Text(
                                    "Calculate",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                )
                              ],
                            )
                          ],
                        )
                      ]),
                ),
              )
            ],
          ),
          SizedBox(height: scheight * 0.01),
        ]),
      ),
    );
  }
}
