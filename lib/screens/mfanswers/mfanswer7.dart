// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'mfanswer8.dart';

class mfanswer7 extends StatefulWidget {
  const mfanswer7({super.key});

  @override
  State<mfanswer7> createState() => _mfanswer7State();
}

class _mfanswer7State extends State<mfanswer7> {
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
                """This is the basic. When you invest in a mutual fund, keep your target in mind. That is, what is the purpose of investment. How long are you planning your investment and with what return expectations?

In the absence of a clear goal, you may want to exit your investment for small fluctuations.

A goal can be short terms like purchasing utility goods, a down payment for a house or an international holiday. It can be for the long term as well, like retirement or college education for children.

Depending upon why you are investing, you will be how to choose best mutual funds to select the mutual fund type. It can be a debt mutual fund, equity mutual fund, or hybrid mutual fund.

For example, for some investors, the main investment objective is to gain capital appreciation on their investments. For others, it may be tax saving. """),
          ),
          SizedBox(
            height: scheight * 0.2,
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
