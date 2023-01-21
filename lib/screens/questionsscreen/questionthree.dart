// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:loan_app/screens/fourthscreen.dart';
import 'package:loan_app/screens/model.dart';
import 'package:loan_app/screens/questionsscreen/questionfourth.dart';

class questionthree extends StatefulWidget {
  const questionthree({super.key});

  @override
  State<questionthree> createState() => _fifthscreenState();
}

class _fifthscreenState extends State<questionthree> {
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
      ss = Model.questionsenglish[2];
    } else {
      ss = Model.questionshindi[2];
    }
  }

  String proof = "Aadhar Card";
  @override
  Widget build(BuildContext context) {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    var scwidth = mediaqry.size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF0E83DE),
        title: const Center(child: Text("Qua. -03/10")),
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
              padding: const EdgeInsets.only(top: 40, left: 5, right: 10),
              child: Text.rich(TextSpan(
                  text: ss,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            ),
            RadioListTile(
              title: Text("Aadhar Card"),
              value: "Aadhar Card",
              groupValue: proof,
              onChanged: (value) {
                setState(() {
                  proof = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Light bill of your precedent"),
              value: "Light bill of your precedent",
              groupValue: proof,
              onChanged: (value) {
                setState(() {
                  proof = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Passbook"),
              value: "Passbook",
              groupValue: proof,
              onChanged: (value) {
                setState(() {
                  proof = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Rent Agreement"),
              value: "Rent Agreement",
              groupValue: proof,
              onChanged: (value) {
                setState(() {
                  proof = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Votter ID Card"),
              value: "Votter ID Card",
              groupValue: proof,
              onChanged: (value) {
                setState(() {
                  proof = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Driving Liacence"),
              value: "Driving Liacence",
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
                          return const questionfourth();
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
