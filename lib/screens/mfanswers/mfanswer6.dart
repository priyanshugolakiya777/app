// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:loan_app/screens/mfanswers/mfanswer7.dart';

class mfanswer6 extends StatefulWidget {
  const mfanswer6({super.key});

  @override
  State<mfanswer6> createState() => _mfanswer6State();
}

class _mfanswer6State extends State<mfanswer6> {
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
                """1) Investment Objective

Investment objective refers to an investors financial goal which he/she aims to accomplish with the mutual fund investment. The investment objective can be any short-term or long-term financial aspiration of the investor – buying a house/car, financing children’s higher education, going on a vacation, retirement, etc.

2) Time Horizon

Time horizon refers to the time period for which an investor wishes to keep his/her money invested in a mutual fund scheme. It can be either as short as 1 day or as long as more than 5 years. Different fund categories work best for different time horizons. This is because some funds invest in shorter dated debt and others invest in longer dated debt. Equity funds should ideally be chosen if the investment horizon is more than 5 years.

The market can be highly volatile in the short term but tends to provide higher earnings growth over time. The below is a ready reckoner of fund categories for different time horizons:

"""),
          ),
          SizedBox(
            height: scheight * 0.2,
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
