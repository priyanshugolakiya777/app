// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:loan_app/screens/fourthscreen.dart';
import 'package:loan_app/screens/model.dart';
import 'package:loan_app/screens/questionsscreen/questionfive.dart';

class questionfourth extends StatefulWidget {
  const questionfourth({super.key});

  @override
  State<questionfourth> createState() => _fifthscreenState();
}

class _fifthscreenState extends State<questionfourth> {

  String? ss;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    forlanguagee();
  }

  void forlanguagee() {
    if (len == true) {
       ss = Model.questionsenglish[3];
    } else {
       ss = Model.questionshindi[3];
    }
  }

  String proof = "500-600";
  @override
  Widget build(BuildContext context) {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    var scwidth = mediaqry.size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF0E83DE),
        title: const Center(child: Text("Qua. -04/10")),
        // ignore: prefer_const_constructors
        actions: const [
          SizedBox(
            width: 50,
          )
        ],
      ),
      backgroundColor: const Color(0xFF0E83DE),
      body: Container(
        height: scheight,
        width: scwidth,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        // ignore: prefer_const_literals_to_create_immutables
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child:  Text.rich(TextSpan(
                  text: ss,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            ),
            RadioListTile(
              title: Text("500-600"),
              value: "500-600",
              groupValue: proof,
              onChanged: (value) {
                setState(() {
                  proof = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("600-700"),
              value: "600-700",
              groupValue: proof,
              onChanged: (value) {
                setState(() {
                  proof = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("700-800"),
              value: "700-800",
              groupValue: proof,
              onChanged: (value) {
                setState(() {
                  proof = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("A bove 800"),
              value: "A bove 800",
              groupValue: proof,
              onChanged: (value) {
                setState(() {
                  proof = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Bellow 500"),
              value: "Bellow 500",
              groupValue: proof,
              onChanged: (value) {
                setState(() {
                  proof = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("No credit score"),
              value: "No credit score",
              groupValue: proof,
              onChanged: (value) {
                setState(() {
                  proof = value.toString();
                });
              },
            ),
            Padding(
              padding: EdgeInsets.only(bottom: scheight * 0.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const questionfive();
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
            ),
            // SizedBox(height: scheight*0.01,)
          ],
        ),
      ),
    );
  }
}
