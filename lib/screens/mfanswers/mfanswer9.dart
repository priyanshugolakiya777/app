// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:loan_app/screens/typeofloan.dart';

class mfanswer9 extends StatefulWidget {
  const mfanswer9({super.key});

  @override
  State<mfanswer9> createState() => _mfanswer9State();
}

class _mfanswer9State extends State<mfanswer9> {
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
            child: const Text("""Understanding SIP vs Lumpsum
Both SIP and lump-sum investments allow investors to benefit from potential wealth creation through mutual funds. However, the primary difference between SIP and lumpsum methods is the frequency of investment.

SIPs allow you to pump in money into a mutual fund scheme periodically, such as daily, weekly, monthly, quarterly or half-yearly etc. On the other hand, lump-sum investments are a one-time bulk investment in a particular scheme. The minimum investment amount also varies. You can begin investing in SIPs with as little as Rs.500 per month while generally lump-sum investments need at least Rs.1,000.

If you are an investor with a small but regular amount of money available for investment, SIPs can be a more suitable investment option. For investors with a relatively high investment amount and risk tolerance, lump-sum investments may be more beneficial.

Comparison of the two methods – SIP vs Lumpsum
Most investors prefer periodic investments because of the benefits SIPs offer over lump-sum investments. Some of these are outlined below:"""),
          ),
          SizedBox(
            height: scheight * 0.2,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const typeofloan();
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
                "Done",
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
