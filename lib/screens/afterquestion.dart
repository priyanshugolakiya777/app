// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loan_app/screens/Calculater.dart';
import 'package:loan_app/screens/more.dart';
import 'package:loan_app/screens/mutualfunds.dart';
import 'package:loan_app/screens/typeofloan.dart';

class afterquestion extends StatefulWidget {
  const afterquestion({super.key});

  @override
  State<afterquestion> createState() => _afterquestionState();
}

class _afterquestionState extends State<afterquestion> {
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
          SizedBox(
            height: scheight * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const typeofloan();
                    },
                  ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: const Color(0xFfD6DFE7),
                      border: Border.all(color: const Color(0xFF0E83DE))),
                  height: scheight * 0.17,
                  width: scwidth * 0.9,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xFF0E83DE)),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50))),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset("images/typeofloan.svg"),
                          ),
                        ),
                        const Text.rich(TextSpan(
                            text: "Type of Loan    ",
                            style: TextStyle(fontSize: 30)))
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
                      return const mutualfunds();
                    },
                  ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: const Color(0xFfD6DFE7),
                      border: Border.all(color: const Color(0xFF0E83DE))),
                  height: scheight * 0.17,
                  width: scwidth * 0.9,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xFF0E83DE)),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50))),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset("images/mutualfund.svg"),
                          ),
                        ),
                        const Text.rich(TextSpan(
                            text: "Mutual funds ?",
                            style: TextStyle(fontSize: 30)))
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
                      return const Calculater();
                    },
                  ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: const Color(0xFfD6DFE7),
                      border: Border.all(color: const Color(0xFF0E83DE))),
                  height: scheight * 0.17,
                  width: scwidth * 0.9,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xFF0E83DE)),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50))),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset("images/calculator.svg"),
                          ),
                        ),
                        const Text.rich(TextSpan(
                            text: "Calculater        ",
                            style: TextStyle(fontSize: 30)))
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
                      return const More();
                    },
                  ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: const Color(0xFfD6DFE7),
                      border: Border.all(color: const Color(0xFF0E83DE))),
                  height: scheight * 0.17,
                  width: scwidth * 0.9,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xFF0E83DE)),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50))),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset(
                                "images/material-symbols_more-horiz.svg"),
                          ),
                        ),
                        const Text.rich(TextSpan(
                            text: "More                ",
                            style: TextStyle(fontSize: 30)))
                      ]),
                ),
              )
            ],
          ),
          SizedBox(
            height: scheight * 0.05,
          )
        ]),
      ),
    );
  }
}
