// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'mfanswer4.dart';

class mfanswer3 extends StatefulWidget {
  const mfanswer3({super.key});

  @override
  State<mfanswer3> createState() => _mfanswer3State();
}

class _mfanswer3State extends State<mfanswer3> {
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
            child: const Text("""Mutual Funds
A mutual fund is a form of investment in which an authorized fund house, such as banks and asset management companies, collects money from investors and trades in securities on their behalf, intending to maximize the profit ratio with the lowest risk. The risk of market movement is reduced because the money is invested in different assets for different investment horizons. When the risk is reduced, a loss in one asset is offset by a profit in another asset in the portfolio.
The investment is done in shares, bonds, and commodities and is known as a portfolio for an individual investor. This portfolio is managed by a finance manager, also known as a fund manager.
Mutual funds are one of the safest forms of investment, where the investment is made in a lump sum form. Various mutual funds aim to achieve certain objectives, such as small-cap, mid-cap, and large-cap funds, index funds, etc.
SIP
SIP is similar to a mutual fund, but the investment is mostly made in lump sum form in mutual funds. Whereas, in SIP, a small amount is constantly invested in the fund on a recurring basis. With SIP, you can invest a minimum of Rs 500 every month or quarter. A fund manager is allocated to invest on behalf of investors in the market in various sectors such as shares, bonds, and commodities. The aim of the fund manager is to maximize the profit while keeping the risk factor at a minimum. 
One of the major benefits of investing in SIP is the power of compounding, where the interest earned on the principal value is reinvested. Over a period, investors yield a higher return of profit."""),
          ),
          SizedBox(
            height: scheight * 0.05,
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
