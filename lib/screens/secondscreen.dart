// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:loan_app/screens/thirdscreen.dart';

class secondscreen extends StatefulWidget {
  const secondscreen({super.key});

  @override
  State<secondscreen> createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  double _value = 10000;

  @override
  Widget build(BuildContext context) {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    var scwidth = mediaqry.size.width;
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Instant Loan")),
          backgroundColor: Color(0xFF0E83DE)),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: scheight * 0.25,
              width: scwidth * 0.9,
              decoration: const BoxDecoration(
                color: Color(0xFfD6DFE7),
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38,
                      offset: Offset(2.0, 3.0), //(x,y)
                      blurRadius: 6.0,
                      blurStyle: BlurStyle.solid),
                ],
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text.rich(TextSpan(
                            text: "Available credit",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20))),
                      ],
                    ),
                    SizedBox(
                      height: scheight * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text.rich(TextSpan(
                            text: "₹ $_value",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ))),
                      ],
                    ),
                    SizedBox(
                      height: scheight * 0.01,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text.rich(TextSpan(
                                text: "10,000",
                                style: TextStyle(fontWeight: FontWeight.bold))),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: 10,
                            ),
                            child: Text.rich(TextSpan(
                                text: "10,000,000",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ))),
                          ),
                        ]),
                    SizedBox(
                      width: scwidth * 0.9,
                      height: scheight * 0.03,
                      child: Slider(
                        activeColor: Colors.black,
                        inactiveColor: Colors.grey,
                        thumbColor: Colors.black,
                        divisions: 100000,
                        min: 10000.00,
                        max: 1000000.00,
                        value: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                    )
                  ]),
            ),
          ],
        ),
        SizedBox(
          height: scheight * 0.2,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return thirdscreen();
              },
            ));
          },
          child: Container(
            height: scheight * 0.06,
            width: scwidth * 0.7,
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
              "View My Credit",
              style: TextStyle(
                  color: Colors.white, fontSize: 25, fontFamily: "Sun Flower"),
            )),
          ),
        ),
        SizedBox(
          height: scheight * 0.2,
        ),
        Text.rich(TextSpan(
          text: """The platform promises to protect your data security
      and will not spread your personal information""",
        ))
      ]),
    );
  }
}
