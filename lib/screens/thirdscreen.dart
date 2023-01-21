// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loan_app/screens/fourthscreen.dart';



class thirdscreen extends StatefulWidget {
  const thirdscreen({super.key});

  @override
  State<thirdscreen> createState() => _thirdscreenState();
}

class _thirdscreenState extends State<thirdscreen> {
  String gender = "male";
  @override
  Widget build(BuildContext context) {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    var scwidth = mediaqry.size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0E83DE),
        title: const Center(child: Text("Select gender")),
        // ignore: prefer_const_constructors
        actions: const [
          SizedBox(
            width: 50,
          )
        ],
      ),
      body: Column(children: [
        Expanded(
          flex: 2,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: scheight * 0.08,
                  width: scwidth * 0.5,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF0E83DE)),
                      color: const Color(0xFFD9D9D9),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset("images/male.svg"),
                          ),
                        ),
                        const Text.rich(TextSpan(
                            text: "Male",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFF0E83DE)))),
                        Radio(
                          value: "male",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value.toString();
                            });
                          },
                        )
                      ]),
                )
              ],
            ),
            SizedBox(
              height: scheight * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: scheight * 0.08,
                  width: scwidth * 0.5,
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFF620E1)),
                      color: const Color(0xFFD9D9D9),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Color(0xFFF620E1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset("images/female.svg"),
                          ),
                        ),
                        const Text.rich(TextSpan(
                            text: "Female",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFFF620E1)))),
                        Radio(
                          value: "Female",
                          activeColor: const Color(0xFFF620E1),
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value.toString();
                            });
                          },
                        )
                      ]),
                )
              ],
            )
          ]),
        ),
        Expanded(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const fourthscreen();
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
        )
      ]),
    );
  }
}
