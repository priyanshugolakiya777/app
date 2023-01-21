// ignore_for_file: camel_case_types, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:loan_app/screens/fourthscreen.dart';
import 'package:loan_app/screens/model.dart';
import 'package:loan_app/screens/questionsscreen/questioneight.dart';

class questionseven extends StatefulWidget {
  const questionseven({super.key});

  @override
  State<questionseven> createState() => _fifthscreenState();
}

class _fifthscreenState extends State<questionseven> {
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
      ss = Model.questionsenglish[6];
    } else {
      ss = Model.questionshindi[6];
    }
  }

  String? dropdownvalue;
  var items = [
    '01.  Job',
    '02. Business',
    '03. Self Employed',
  ];
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
        title: const Center(child: Text("Qua. -07/10")),
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
              child: Text.rich(TextSpan(
                  text: ss,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton(
                      hint: Text("Select your category"),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      // Initial Value
                      value: dropdownvalue, menuMaxHeight: scheight * 0.45,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ],
                )),
            SizedBox(
              height: scheight * 0.4,
            ),

            Padding(
              padding: EdgeInsets.only(bottom: scheight * 0.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      

                      if (dropdownvalue != null) {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const questioneight();
                          },
                        ));
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(backgroundColor: Color(0xFF0E83DE),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                              title: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text("Please select Details.",style: TextStyle(color: Colors.black)),
                                  SizedBox(height: 20,),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("Ok",style: TextStyle(color: Colors.white,fontSize: 15),))
                                ],
                              ),
                            );
                          },
                        );
                      }
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
