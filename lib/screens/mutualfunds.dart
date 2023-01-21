// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:loan_app/screens/mfanswers/mfanswer1.dart';
import 'package:loan_app/screens/mfanswers/mfanswer2.dart';
import 'package:loan_app/screens/mfanswers/mfanswer3.dart';
import 'package:loan_app/screens/mfanswers/mfanswer4.dart';
import 'package:loan_app/screens/mfanswers/mfanswer5.dart';
import 'package:loan_app/screens/mfanswers/mfanswer6.dart';
import 'package:loan_app/screens/mfanswers/mfanswer7.dart';
import 'package:loan_app/screens/mfanswers/mfanswer8.dart';
import 'package:loan_app/screens/mfanswers/mfanswer9.dart';

class mutualfunds extends StatefulWidget {
  const mutualfunds({super.key});

  @override
  State<mutualfunds> createState() => _mutualfundsState();
}

class _mutualfundsState extends State<mutualfunds> {
  @override
  Widget build(BuildContext context) {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    var scwidth = mediaqry.size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF0E83DE),
        title: const Center(child: Text("Mutual Funds")),
        // ignore: prefer_const_constructors
        actions: const [
          SizedBox(
            width: 50,
          )
        ],
      ),
      backgroundColor: const Color(0xFF0E83DE),
      // ignore: prefer_const_constructors
      body: Container(
        height: scheight,
        width: scwidth,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: scheight * 0.04,
          ),
          SizedBox(
            // ignore: prefer_const_constructors

            height: scheight * 0.6,
            width: scwidth * 0.9,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const mfanswer1();
                    },
                  ));
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  height: scheight * 0.06,
                  width: scwidth * 0.9,
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text.rich(TextSpan(
                              text: "What is mutual fund ?",
                              style: TextStyle(fontSize: 20))),
                        ),
                        const Icon(Icons.arrow_right_outlined)
                      ]),
                ),
              ),
              SizedBox(
                height: scheight * 0.005,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const mfanswer2();
                    },
                  ));
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  height: scheight * 0.06,
                  width: scwidth * 0.9,
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text.rich(TextSpan(
                              text: "What is mutual sip ?",
                              style: TextStyle(fontSize: 20))),
                        ),
                        const Icon(Icons.arrow_right_outlined)
                      ]),
                ),
              ),
              SizedBox(
                height: scheight * 0.005,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const mfanswer3();
                    },
                  ));
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  height: scheight * 0.06,
                  width: scwidth * 0.9,
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text.rich(TextSpan(
                              text: "Mutual fund vs sip ?",
                              style: TextStyle(fontSize: 20))),
                        ),
                        const Icon(Icons.arrow_right_outlined)
                      ]),
                ),
              ),
              SizedBox(
                height: scheight * 0.005,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const mfanswer4();
                    },
                  ));
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  height: scheight * 0.06,
                  width: scwidth * 0.9,
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text.rich(TextSpan(
                              text: "Type of mutual fund",
                              style: TextStyle(fontSize: 20))),
                        ),
                        const Icon(Icons.arrow_right_outlined)
                      ]),
                ),
              ),
              SizedBox(
                height: scheight * 0.005,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const mfanswer5();
                    },
                  ));
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  height: scheight * 0.06,
                  width: scwidth * 0.9,
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text.rich(TextSpan(
                              text: "ELSS (Tax Saver)",
                              style: TextStyle(fontSize: 20))),
                        ),
                        const Icon(Icons.arrow_right_outlined)
                      ]),
                ),
              ),
              SizedBox(
                height: scheight * 0.005,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const mfanswer6();
                    },
                  ));
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  height: scheight * 0.06,
                  width: scwidth * 0.9,
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text.rich(TextSpan(
                              text: "How to select Fund ?",
                              style: TextStyle(fontSize: 20))),
                        ),
                        const Icon(Icons.arrow_right_outlined)
                      ]),
                ),
              ),
              SizedBox(
                height: scheight * 0.005,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const mfanswer7();
                    },
                  ));
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  height: scheight * 0.06,
                  width: scwidth * 0.9,
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text.rich(TextSpan(
                              text: "Tips to choose fund",
                              style: TextStyle(fontSize: 20))),
                        ),
                        const Icon(Icons.arrow_right_outlined)
                      ]),
                ),
              ),
              SizedBox(
                height: scheight * 0.005,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const mfanswer8();
                    },
                  ));
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  height: scheight * 0.06,
                  width: scwidth * 0.9,
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text.rich(TextSpan(
                              text: "What is NAV ?",
                              style: TextStyle(fontSize: 20))),
                        ),
                        const Icon(Icons.arrow_right_outlined)
                      ]),
                ),
              ),
              SizedBox(
                height: scheight * 0.005,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const mfanswer9();
                    },
                  ));
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  height: scheight * 0.06,
                  width: scwidth * 0.9,
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text.rich(TextSpan(
                              text: "Lumpsum vs SIP",
                              style: TextStyle(fontSize: 20))),
                        ),
                        const Icon(Icons.arrow_right_outlined)
                      ]),
                ),
              ),
            ]),
          ),
          SizedBox(
            height: scheight * 0.02,
          ),
          SizedBox(
              height: scheight * 0.2,
              width: scwidth,
              child: const Image(
                image: AssetImage("images/image-removebg-preview (25) 1.jpg"),
                colorBlendMode: BlendMode.colorBurn,
              ))
        ]),
      ),
    );
  }
}
