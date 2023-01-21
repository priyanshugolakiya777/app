// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:loan_app/screens/questionsscreen/questionone.dart';

bool len = true;

class fourthscreen extends StatefulWidget {
  const fourthscreen({super.key});

  @override
  State<fourthscreen> createState() => _fourthscreenState();
}

class _fourthscreenState extends State<fourthscreen> {
  bool Forlanguage = false;
  @override
  Widget build(BuildContext context) {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    var scwidth = mediaqry.size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF0E83DE),
        title: const Center(child: Text("Select Language")),
        // ignore: prefer_const_constructors
        actions: const [
          SizedBox(
            width: 50,
          )
        ],
      ),
      backgroundColor: const Color(0xFF0E83DE),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70))),
            height: scheight * 0.6,
            width: scwidth,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            Forlanguage = false;
                            len = true;
                          });
                        },
                        child: Container(
                          height: scheight * 0.15,
                          width: scwidth * 0.45,
                          decoration: BoxDecoration(
                              // ignore: prefer_const_constructors
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                // ignore: prefer_const_literals_to_create_immutables
                                colors: [
                                  Colors.blue,
                                  Colors.blue,
                                  Colors.white,
                                ],
                              ),
                              border: Forlanguage == false
                                  ? Border.all(color: Colors.black, width: 3)
                                  : Border.all(color: Colors.white),
                              borderRadius:
                                  // ignore: prefer_const_constructors
                                  BorderRadius.all(Radius.circular(15))),
                          child: const Center(
                            child: Text.rich(TextSpan(
                                text: "English",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white))),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Forlanguage = true;
                            len = false;
                          });
                        },
                        child: Container(
                          height: scheight * 0.15,
                          width: scwidth * 0.45,
                          decoration: BoxDecoration(
                              // ignore: prefer_const_constructors
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                // ignore: prefer_const_literals_to_create_immutables
                                colors: [
                                  Colors.blue,
                                  Colors.blue,
                                  Colors.white,
                                ],
                              ),
                              border: Forlanguage == true
                                  ? Border.all(color: Colors.black, width: 3)
                                  : Border.all(color: Colors.white),
                              borderRadius:
                                  // ignore: prefer_const_constructors
                                  BorderRadius.all(Radius.circular(15))),
                          child: const Center(
                            child: Text.rich(TextSpan(
                                text: "Hindi",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white))),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const questionone();
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
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
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
