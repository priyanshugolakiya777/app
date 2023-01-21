// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'mfanswer9.dart';

class mfanswer8 extends StatefulWidget {
  const mfanswer8({super.key});

  @override
  State<mfanswer8> createState() => _mfanswer8State();
}

class _mfanswer8State extends State<mfanswer8> {
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
                """NAV in Closed-End Funds vs. Open-End Funds
An open-end fund can issue an unlimited number of shares, does not trade on exchanges, and is priced each day at the close of trading at their NAV price. Most mutual funds, such as those in 401k plans, are open-end funds.

Closed-end funds are listed on a stock exchange, trade similarly to securities, and can trade at a price that's not equal to their NAV. ETFs trade like stocks and their market value can differ from their actual NAV.

This allows for profitable trading opportunities for active ETF traders who can spot timely opportunities. Similar to mutual funds, ETFs also calculate their NAV daily at the close of the market for reporting purposes but also calculate and disseminate intra-day NAV multiple times per minute in real-time."""),
          ),
          SizedBox(
            height: scheight * 0.2,
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
