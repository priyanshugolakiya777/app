// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:loan_app/screens/mfanswers/mfanswer3.dart';

class mfanswer2 extends StatefulWidget {
  const mfanswer2({super.key});

  @override
  State<mfanswer2> createState() => _mfanswer1State();
}

class _mfanswer1State extends State<mfanswer2> {
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
                """A Systematic Investment Plan (SIP), more popularly known as SIP, is a facility offered by mutual funds to the investors to invest in a disciplined manner. SIP facility allows an investor to invest a fixed amount of money at pre-defined intervals in the selected mutual fund scheme. The fixed amount of money can be as low as Rs. 500, while the pre-defined SIP intervals can be on a weekly/monthly/quarterly/semi-annually or annual basis. By taking the SIP route to investments, the investor invests in a time-bound manner without worrying about the market dynamics and stands to benefit in the long-term due to average costing and power of compounding.
                When you invest regularly through SIP and invest for the long term, the benefits are magnified by the compounding effect. Compounding effect ensures that you earn returns not only on your principal amount (actual investment) but also on the gains on the principal amount i.e. your money grows over time as the money you invest earns returns. And the returns also earn returns.
                If you start SIP at age 25, as per the illustration shown a corpus of approximately Rs. 2.76 crores can be generated at retirement. If you would have waited 5 years and started SIP at age 30, a corpus of approximately Rs. 1.54 crore would have been available to you at retirement i.e. a difference of Rs. 1.21 crore  which is the cost of delaying starting SIP."""),
          ),
          SizedBox(
            height: scheight * 0.2,
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
