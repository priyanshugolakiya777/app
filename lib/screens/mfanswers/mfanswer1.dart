// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:loan_app/screens/mfanswers/mfanswer2.dart';

class mfanswer1 extends StatefulWidget {
  const mfanswer1({super.key});

  @override
  State<mfanswer1> createState() => _mfanswer1State();
}

class _mfanswer1State extends State<mfanswer1> {
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
                """A mutual fund is a pool of money managed by a professional Fund Manager.

It is a trust that collects money from a number of investors who share a common investment objective and invests the same in equities, bonds, money market instruments and/or other securities. And the income / gains generated from this collective investment is distributed proportionately amongst the investors after deducting applicable expenses and levies, by calculating a scheme’s “Net Asset Value” or NAV. Simply put, the money pooled in by a large number of investors is what makes up a Mutual Fund.

Here’s a simple way to understand the concept of a Mutual Fund Unit.
Let’s say that there is a box of 12 chocolates costing ₹40. Four friends decide to buy the same, but they have only ₹10 each and the shopkeeper only sells by the box. So the friends then decide to pool in ₹10 each and buy the box of 12 chocolates. Now based on their contribution, they each receive 3 chocolates or 3 units, if equated with Mutual Funds.
And how do you calculate the cost of one unit? Simply divide the total amount with the total number of chocolates: 40/12 = 3.33.
So if you were to multiply the number of units (3) with the cost per unit (3.33), you get the initial investment of ₹10."""),
          ),
          SizedBox(
            height: scheight * 0.2,
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
