// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loan_app/screens/secondscreen.dart';

class firstscreen extends StatefulWidget {
  const firstscreen({super.key});

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  @override
  Widget build(BuildContext context) {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    var scwidth = mediaqry.size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Stack(
          children: [
            SizedBox(
              height: scheight,
              width: scwidth,
              child: SvgPicture.asset("images/02.svg", fit: BoxFit.fill),
            ),
            Positioned(
              bottom: scheight * 0.25,
              left: scwidth * 0.15,
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return secondscreen();
                    },
                  ));
                },
                child: Container(
                  height: scheight * 0.06,
                  width: scwidth * 0.7,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black45,
                            offset: Offset(2.0, 3.0), //(x,y)
                            blurRadius: 6.0,
                            blurStyle: BlurStyle.solid),
                      ],
                      color: Color(0xFF0E83DE),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: const Center(
                      child: Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: "Sun Flower"),
                  )),
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}
