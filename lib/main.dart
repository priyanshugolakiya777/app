// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:loan_app/screens/firstscreen.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splashscreen(),
  ));
}

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with TickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mediaqry = MediaQuery.of(context);
    var scheight = mediaqry.size.height;
    var scwidth = mediaqry.size.width;
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: scheight * 0.4,
              width: scwidth * 0.8,
              // height: 100,
              // width: 100,
              child: Lottie.asset(
                "images/lf30_editor_kswu8zxv.json",
                controller: _controller,
                fit: BoxFit.fill,
                onLoaded: (composition) {
                  _controller!
                    ..duration = composition.duration
                    ..forward().whenComplete(() => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => firstscreen()),
                        ));
                },
              ),
            ),
          ],
        ),
        Container(
          height: scheight * 0.1,
          width: scwidth * 0.7,
          decoration: BoxDecoration(
              color: Color(0xFF3687d2),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Center(
              child: Text(
            "Speedy Loan",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontFamily: "Sun Flower"),
          )),
        )
      ]),
    );
  }
}
