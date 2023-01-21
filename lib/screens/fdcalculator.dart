// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_final_fields, duplicate_ignore

import 'package:flutter/material.dart';

class Fdcalculator extends StatefulWidget {
  const Fdcalculator({super.key});

  @override
  State<Fdcalculator> createState() => _FdcalculatorState();
}

class _FdcalculatorState extends State<Fdcalculator> {
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  TextEditingController _controller3 = new TextEditingController();

  double? interest;
  double? total;

  void calculation() {
    final calinterestrate = (double.parse(_controller2.text) / 100 / 12) *
        int.parse(_controller3.text);
    final calinterest = calinterestrate * int.parse(_controller1.text);

    setState(() {
      interest = calinterest;
      total = int.parse(_controller1.text) + interest!;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF0E83DE),
        title: const Center(child: Text("Sip calculator")),
        // ignore: prefer_const_constructors
        actions: const [
          SizedBox(
            width: 50,
          )
        ],
      ),
      body: body(),
    );
  }

  Widget body() {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    return Container(
      color: Colors.grey[100],
      child: Column(children: [
        Container(
          height: scheight*0.2,
          decoration: const BoxDecoration(
              color: Color(0xFF0E83DE),
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(100))),
          child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Fixed Deposit",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    const Text(
                      "Calculator",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    )
                  ],
                ),
              )),
        ),
         SizedBox(
          height: scheight*0.02,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 40, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              inputform(
                  title: "Deposit Amount :",
                  controller: _controller1,
                  hinttext: "e.g 20000"),
              inputform(
                  title: "Annual Interest Rate(%) :",
                  controller: _controller2,
                  hinttext: "e.g 3"),
              inputform(
                  title: "Period(in month) :",
                  controller: _controller3,
                  hinttext: "e.g 3"),
               SizedBox(
                height: scheight*0.01,
              ),
              GestureDetector(
                onTap: () {
                  calculation();
                },
                child: Container(
                  height: scheight*0.07,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25)),
                  child: const Center(
                    child: Text(
                      "CALCULATE",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: scheight*0.01,
              ),
              interest != null
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Result: ",
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          height: scheight*0.01,
                        ),
                        Center(
                          child: Text(
                            "Interest: ${interest!.toStringAsFixed(2)}",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                        SizedBox(
                          height: scheight*0.01,
                        ),
                        Center(
                          child: Text(
                            "Total: ${total!.toStringAsFixed(2)}",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ],
                    )
                  : SizedBox()
            ],
          ),
        )
      ]),
    );
  }

  Widget inputform(
    
      {String? title, TextEditingController? controller, String? hinttext}) {
        var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    // ignore: prefer_const_literals_to_create_immutables
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text(
          title!,
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: scheight*0.06,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          // ignore: prefer_const_constructors
          child: TextField(
            keyboardType: TextInputType.number,
            controller: controller,
            // ignore: prefer_const_constructors
            decoration: InputDecoration(
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                hintText: hinttext),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
