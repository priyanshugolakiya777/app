// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:loan_app/screens/mfanswers/mfanswer6.dart';

class mfanswer5 extends StatefulWidget {
  const mfanswer5({super.key});

  @override
  State<mfanswer5> createState() => _mfanswer5State();
}

class _mfanswer5State extends State<mfanswer5> {
  @override
  Widget build(BuildContext context) {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    var scwidth = mediaqry.size.width;
    return Scaffold(
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: const Color(0xFF0E83DE),
        title: const Center(child: Text("Mutual funds")),
        // ignore: prefer_const_constructors
        actions: const [
          SizedBox(
            width: 50,
          )
        ],
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
                """You Invest in ELSS via Lumpsum (One-time Investment) or SIP (Systematic Investment Plan).
A minimum of 80% of the total corpus is invested in Equity and Equity-related Instruments.
Your investment is locked-in for a period of 3 years.
You can now claim Tax exemption on the invested amount up to a maximum of ₹1.5 Lakhs under Section 80C of the Income Tax Act, 1961.
This enables you to save up to ₹46,800* in Income Tax every year.

Simply put, ELSS (Equity Linked Savings Scheme) is a type of a Mutual Fund which invests your money in Equity Instruments and allows you to reduce the income tax you are liable to pay. Here's more on how ELSS works.

When you work so hard through the year and do your best to provide for your family, why should you pay so much Income Tax. With ELSS, you can save up to ₹46,800* every year in taxes by investing ₹1.5 Lakhs as per Section 80C of the Income Tax Act, 1961. Apart from Saving Tax ELSS also has additional benefits.

You can even choose to invest more than ₹ 1.5 lakhs as ELSS gives you a great opportunity to create long-term wealth and achieve your life goals."""),
          ),
          SizedBox(
            height: scheight * 0.2,
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
              height: scheight * 0.06,
              width: scwidth * 0.6,
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(2.0, 3.0), //(x,y)
                        blurRadius: 6.0,
                        blurStyle: BlurStyle.solid),
                  ],
                  color: Color(0xFF0E83DE),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: const Center(
                  child: Text(
                "Next",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: "Sun Flower"),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
